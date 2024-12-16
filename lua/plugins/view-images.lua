return {
  "3rd/image.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  rocks = { "magick" },
  config = function()
    -- Add error handling for the require
    local ok, image = pcall(require, "image")
    if not ok then
      vim.notify("Failed to load image.nvim: " .. image, vim.log.levels.ERROR)
      return
    end

    -- Try to detect the best backend
    local function detect_backend()
      local terminal = os.getenv("TERM_PROGRAM")
      if terminal == "iTerm.app" then
        return "kitty"            -- fallback to kitty protocol which iTerm supports
      else
        return "ueberzug"         -- fallback to ueberzug
      end
    end

    image.setup({
      backend = detect_backend(),
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = false,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
      editor_only_render_when_focused = false,
      tmux_show_only_in_active_window = false,
      hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" },
      debug = false,       -- Set to true for troubleshooting
    })
  end,
}

