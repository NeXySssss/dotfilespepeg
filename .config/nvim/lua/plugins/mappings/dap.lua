local u = require("utils")

u.map("n", { "<leader>dc", "<F5>" }, "<cmd>lua require'dap'.continue()<CR>")
u.map("n", { "<leader>dsi", "<F11>" }, "<cmd>lua require'dap'.step_into()<CR>")
u.map("n", { "<leader>dso", "<F10>" }, "<cmd>lua require'dap'.step_over()<CR>")
u.map("n", { "<leader>dsO", "<F12>" }, "<cmd>lua require'dap'.step_out()<CR>")
u.map("n", { "<leader>db", "<F8>" }, "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
u.map("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
u.map("n", "<leader>dlp", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
u.map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l")
u.map("n", "<leader>dl", "<cmd>lua require'dap'.repl.run_last()<CR>")
u.map("n", "<leader>di", "<cmd>lua require'dap.ui.variables'.hover(function () return vim.fn.expand(\"<cexpr>\") end)<CR>")
u.map("n", "<leader>d?", "<cmd>lua require'dap.ui.variables'.scopes()<CR>")
u.map("n", "<leader>de", "<cmd>lua require'dap'.set_exception_breakpoints({\"all\"})<CR>")
