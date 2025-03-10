-- File Tree
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	require("neo-tree").setup({
		buffers = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = false,
			},
		},

		filesystem = {
			filtered_items = {
				hide_gitignored = false,
				always_show = {
					".gitignore",
					".env",
					".github",
					"*.sqlfluff",
					".tmux.conf",
					".luarc.json",
					".sqllsrc.json",
					".test.yaml",
					".production.yaml",
					"dbt/target/*",
					".cargo",
				},
			},
		},
		git_status = {
			symbols = {
				added = "✚",
				deleted = "✖",
				modified = "",
				renamed = "󰁕",
				untracked = "",
				ignored = "",
				unstaged = "󰄱",
				staged = "",
				conflict = "",
			},
			align = "right",
		},
	}),
}
