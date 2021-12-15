local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local fortune = require("alpha.fortune")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set menu
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", "<cmd>ene <CR>"),
    dashboard.button("SPC f f", "  Find file"),
    dashboard.button("SPC f h", "  Recently opened files"),
    dashboard.button("SPC f r", "  Frecency/MRU"),
    dashboard.button("SPC f g", "  Find word"),
    dashboard.button("SPC f m", "  Jump to bookmarks"),
    dashboard.button("SPC s l", "  Open last session"),
}

-- Daily Quote
dashboard.section.footer.val = fortune()

alpha.setup(dashboard.opts)

-- Send config to alpha
alpha.setup(dashboard.opts)
