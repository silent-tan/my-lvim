vim.opt.backup = false            -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
-- Set a compatible clipboard manager
-- vim.g.clipboard = {
--   copy = {
--     ["+"] = "win32yank.exe -i --crlf",
--     ["*"] = "win32yank.exe -i --crlf",
--   },
--   paste = {
--     ["+"] = "win32yank.exe -o --lf",
--     ["*"] = "win32yank.exe -o --lf",
--   },
-- }
vim.opt.cursorline = true      -- highlight the current line
vim.opt.laststatus = 3         -- set global statusline
vim.opt.relativenumber = false -- set relative numbered lines
vim.opt.numberwidth = 4        -- set number column width to 2 {default 4}
vim.opt.title = true
vim.opt.titlelen = 0

-- Enable powershell as your default shell
vim.opt.shell = "pwsh.exe"
vim.opt.shellcmdflag =
"-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.cmd [[
		let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
		set shellquote= shellxquote=
  ]]
