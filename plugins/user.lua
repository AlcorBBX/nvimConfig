return { "HerringtonDarkholme/yats.vim",
    "morhetz/gruvbox",
    "mattn/emmet-vim",
    -- 'm4xshen/autoclose.nvim',
    'windwp/nvim-ts-autotag',
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup {
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                term_colors = true,
                transparent_background = true,
                no_italic = false,
                no_bold = false,
                styles = {
                    comments = {},
                    conditionals = {},
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {}
                },
                color_overrides = {
                    mocha = {
                        base = "#202023",
                        mantle = "#202023",
                        crust = "#202023"
                    }
                },
                highlight_overrides = {
                    mocha = function(C)
                        return {
                            TabLineSel = { bg = C.pink },
                            CmpBorder = {
                                fg = C.surface2
                            },
                            Pmenu = {
                                bg = C.none
                            },
                            TelescopeBorder = {
                                link = "FloatBorder"
                            }
                        }
                    end
                }
            }

            -- vim.cmd.colorscheme "catppuccin"
        end
    } -- You can also add new plugins here as well:
    -- Add plugins, the lazy syntax
    -- "andweeb/presence.nvim",
    -- {
    --   "ray-x/lsp_signature.nvim",
    --   event = "BufRead",
    --   config = function()
    --     require("lsp_signature").setup()
    --   end,
    -- },
}
