return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = true;
            },
        },
    },

    config = function()
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})

        require("neo-tree").setup({
            close_if_last_window = true;

            default_component_configs = {
                icon = {
                    folder_closed = "",
                    folder_open = "",
                    folder_empty = "",
                },

                name = {
                    use_git_status_colors = false,
                },

                git_status = {
                    symbols = {
                        added = "",
                        modified = "",
                        deleted = "",
                        renamed = "󰏫",

                        untracked = "",
                        ignored = "󱙝",
                        unstaged = "○",
                        staged = "●",
                        conflict = "",
                    },
                },

                symlink_target = {
                    enabled = true,
                },
            },

            filesystem = {
                group_empty_dirs = true,
                use_libuv_file_watcher = true,

                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
    end
}
