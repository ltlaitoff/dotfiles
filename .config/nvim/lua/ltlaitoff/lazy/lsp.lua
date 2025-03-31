local function filter(arr, fn)
  if type(arr) ~= "table" then
    return arr
  end

  local filtered = {}
  for k, v in pairs(arr) do
    if fn(v, k, arr) then
      table.insert(filtered, v)
    end
  end

  return filtered
end

local function filterReactDTS(value)
  return string.match(value.uri, 'react/index.d.ts') == nil
end


return {
    "neovim/nvim-lspconfig",

    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      "j-hui/fidget.nvim",
    },

    config = function()
local cmp = require('cmp')
        local cmp_lsp = require("cmp_nvim_lsp")
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

      local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
          ['<cr>'] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
          { name = 'buffer' },
        })
      })

      require("fidget").setup({})
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "gopls", "volar"  },
				automatic_installation=true,
        handlers = {
          function(server_name) -- default handler (optional)

            require("lspconfig")[server_name].setup({
              capabilities = capabilities
            })
          end,

					["ts_ls"] = function ()
						local lspconfig = require("lspconfig")
						lspconfig.ts_ls.setup({
							-- other options
							handlers = {
								['textDocument/definition'] = function(err, result, method, ...)
									if vim.tbl_islist(result) and #result > 1 then
										local filtered_result = filter(result, filterReactDTS)
										return vim.lsp.handlers['textDocument/definition'](err, filtered_result, method, ...)
									end

									vim.lsp.handlers['textDocument/definition'](err, result, method, ...)
								end
							}
						})
					end,

					["volar"] = function()
						require("lspconfig").volar.setup({
							filetypes = { "vue" },
							init_options = {
								vue = {
									hybridMode = false,
								},
								typescript = {
									tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib",
								},
							},
						})
					end,

          ["lua_ls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {
              capabilities = capabilities,
              settings = {
                Lua = {
                  runtime = { version = "Lua 5.1" },
                  diagnostics = {
                    globals = { "vim", "it", "describe", "before_each", "after_each" },
                  }
                }
              }
            }
          end,
        }
      })
    end,

}
