local status, bufferline = pcall(require, "bufferline")
bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'thick',
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
     indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
  },
})

