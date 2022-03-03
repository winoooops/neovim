local nvim_notify = require("notify")
nvim_notify.setup({
  -- Animation style
  -- stages = "fade_in_slide_out",
  stages = "slide", 
  -- Default timeout for notifications
  timeout = 5000,
  background_colour = "#2E3440",
})

vim.notify = nvim_notify
