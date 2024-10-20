return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = '固定Buffer' },
    { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = '关闭未固定Buffer' },
    { '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', desc = '关闭其它Buffer' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = '向右关闭Buffer' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = '向左关闭Buffer' },
    { '<leader>bd', ':bd<CR>', desc = '关闭当前Buffer' },
    { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = '前一个Buffer' },
    { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = '后一个buffer' },
  },
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
