-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "",
    staged = "S",
    unmerged = "",
    renamed = "➜",
    deleted = "",
    untracked = "U",
    ignored = "◌",
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
  },
}

-- see https://github.com/kyazdani42/nvim-tree.lua for more


local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  ignore_ft_on_setup = {
    "startify",
    "dashboard",
    "alpha",
  },
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = true,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 40,
    height = 30,
    hide_root_folder = false,
    side = "left",
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "<C-]>", cb = tree_cb "cd"},
        { key = "<C-t>", cb = tree_cb "tabnew"}, -- open in new tab
        { key = "<C-v>", cb = tree_cb "vsplit" }, -- open in vertical view
        { key = "<C-x>", cb = tree_cb "split"},
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
        { key = "d", cb = tree_cb "remove" },
        { key = "a", cb = tree_cb "create" },
        { key = "r", cb = tree_cb "rename" },
        { key = "c", cb = tree_cb "copy" },
        { key = "y", cb = tree_cb "copy_name" },
        { key = "Y", cb = tree_cb "copy_path"},
        { key = "gy", cb = tree_cb "copy_absolute_path" },
        { key = "x", cb = tree_cb "cut"},
        { key = "p", cb = tree_cb "paste"},
        { key = "s", cb = tree_cb "search_node" },
        { key = "S", cb = tree_cb "system_open" },
        { key = "q", cb = tree_cb "close" },
        { key = "W", cb = tree_cb "collapse_all" },
      },
    },
    number = false,
    relativenumber = false,
  },
  quit_on_open = 0,
  git_hl = 1,
  disable_window_picker = 0,
  root_folder_modifier = ":t",
  show_icons = {
    git = 1,
    folders = 1,
    files = 1,
    folder_arrows = 1,
    tree_width = 30,
  },
}
