local lspkind          = require('lspkind')
local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip          = require('luasnip')
local cmp              = require('cmp')

--[[ local mp_kinds = {
  Text = '  ',
  Method = '  ',
  Function = '  ',
  Constructor = '  ',
  Field = '  ',
  Variable = '  ',
  Class = '  ',
  Interface = '  ',
  Module = '  ',
  Property = '  ',
  Unit = '  ',
  Value = '  ',
  Enum = '  ',
  Keyword = '  ',
  Snippet = '󰆐  ',
  Color = '  ',
  File = '  ',
  Reference = '  ',
  Folder = '  ',
  EnumMember = '  ',
  Constant = '  ',
  Struct = '  ',
  Event = '  ',
  Operator = '  ',
  TypeParameter = '  ',
} ]]

luasnip.config.setup {}

cmp.setup({

  --[[ formatting = {
    format = lspkind.cmp_format({
      maxwidth = 50,
      ellipsis_char = '...',
      formatting = {
        format = function(entry, vim_item)
          -- menu
          vim_item.mode = 'symbol'
          -- Kind icons
          vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
          -- Source
          vim_item.menu = ({
            buffer = "[Buf]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            vsnip = "[vsnip]",
            nvim_lua = "[Lua]",
            latex_symbols = "[LaTeX]",
          })[entry.source.name]
          return vim_item
        end
      }
    }),
  }, ]]
  formatting = {
    format = function(_, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. " "
      kind.menu = "    [" .. (strings[2] or "") .. "]"
      return kind
    end
    ,
  },
  completion = {
    completeopt = "menu,menuone,noinsert",
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = {
      scrollbar = '║',
      border = 'none',
    },
    documentation = {
      scrollbar = '║',
      border = 'none',
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
    }
  },

  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-g>"] = cmp.mapping.scroll_docs(4),
    ["<C-f>"] = cmp.mapping.abort(),
    ["<C-e>"] = cmp.mapping.confirm({ select = true }),
    ["<Up>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
        -- they way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-Space>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
        -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
        -- they way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-S-c>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "ultisnips" },
    { name = "vsnip" },
    { name = "buffer" },
    { name = "path" },
  }),
  experimental = {
    ghost_text = {
      hl_group = "LspCodeLens",
    },
  },
})
