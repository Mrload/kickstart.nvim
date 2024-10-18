return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  opts = {
    options = {
      offsets = {
        {
          filetype = 'neo-tree', --树结构组件
          -- text = '文件管理', -- 标题
          text = function() -- 标题
            return vim.fn.getcwd()
          end,
          text_align = 'lefg', -- 标题居中
          -- separator = true,  --分隔符
          highlight = 'Directory', -- 高亮文件夹
        },
      },
    },
  },
}
