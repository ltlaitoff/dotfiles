-- local function escape(str)
--   -- You need to escape these characters to work correctly
--   local escape_chars = [[;,."|\]]
--   return vim.fn.escape(str, escape_chars)
-- end

-- Recommended to use lua template string
-- local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm<>/]]
-- local ua = [['йцукенгшщзхїфівапролджєячсмитьбю.]]
-- local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
-- local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>?]]
-- local ua_shift = [['ЙЦУКЕНГШЩЗХЇФІВАПРОЛДЖЄЯЧСМИТЬБЮ.]]
-- local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

-- 'йцукенгшщзхїфівапролджєячсмитьбю.
-- 'ЙЦУКЕНГШЩЗХЇФІВАПРОЛДЖЄЯЧСМИТЬБЮ.

-- АБВГҐДЕЄЖЗИІЇЙКЛМНОПРСТУФХЦЧШЩЬЯ
-- А а, Б б, В в, Г г, Ґ ґ, Д д, Е е, Є є, Ж ж, З з, И и, І і, Ї ї, Й й, К к, Л л, М м, Н н, О о, П п, Р р, С с, Т т, У у, Ф ф, Х х, Ц ц, Ч ч, Ш ш, Щ щ, ь, Ю ю, Я я
-- vim.opt.langmap=[[йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ї],фa,іs,вd,аf,пg,рh,оj,лk,дl,ж\\;,
--   \є',ґ\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,,ЙQ,ЦW,УE,КR,ЕT,НY,НY,ГU,ШI,ЩO,ЗP,Х{,Ї},ФA,
--   \ІS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Є\\",Ґ\|,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю>,№#]]

-- vim.opt.langmap = vim.fn.join({
--     -- | `to` should be first     | `from` should be second
--     escape(ua_shift) .. ';' .. escape(en_shift),
--     escape(ua) .. ';' .. escape(en),
-- }, ',')
