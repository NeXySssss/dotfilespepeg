local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.markdown = {
	install_info = {
		url = "https://github.com/ikatyang/tree-sitter-markdown",
		files = { "src/parser.c", "src/scanner.cc" },
	},
	filetype = "markdown",
}

require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"markdown",
		"javascript",
		"c_sharp",
		"rust",
		"go",
		"html",
		"css",
		"json",
		"yaml",
		"vue",
		"cpp",
		"dart",
		"c",
		"bash",
		"java",
		"kotlin",
		"regex",
		"jsdoc",
		"typescript",
		"svelte",
		"tsx",
	},
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = { enable = true },
	autopairs = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
	textobjects = {
		-- enable = true,
		select = {
			enable = true,

			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,

			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ab"] = "@block.outer",
				["ib"] = "@block.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
				["as"] = "@statement.outer",
			},
		},
		swap = {
			enable = true,
			swap_next = {
				["<leader>sn"] = "@parameter.inner",
			},
			swap_previous = {
				["<leader>sp"] = "@parameter.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				["]]"] = "@function.outer",
				-- ["]f"] = "@function.outer",
				["]s"] = "@statement.outer",
				["]b"] = "@block.outer",
				["]c"] = "@class.outer",
			},
			goto_next_end = {
				["]["] = "@function.outer",
				-- ["]F"] = "@function.outer",
				["]S"] = "@statement.outer",
				["]B"] = "@block.outer",
				["]C"] = "@class.outer",
			},
			goto_previous_start = {
				["[["] = "@function.outer",
				-- ["[f"] = "@function.outer",
				["[s"] = "@statement.outer",
				["[b"] = "@block.outer",
				["[c"] = "@class.outer",
			},
			goto_previous_end = {
				["[]"] = "@function.outer",
				-- ["[f"] = "@function.outer",
				["[S"] = "@statement.outer",
				["[B"] = "@block.outer",
				["[C"] = "@class.outer",
			},
		},
	},
})
