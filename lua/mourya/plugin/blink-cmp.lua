return {
  { -- Autocompletion
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
      keymap = {
        preset = 'none',
        ['<Tab>'] = {'select_next', 'fallback'},
        ['<S-Tab>'] = {'select_prev', 'fallback'},
        ['<CR>'] = {'accept', 'fallback'},
      },
      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        nerd_font_variant = 'mono',
      },
      completion = {
        -- Optionally, set `auto_show = true` to show the documentation after a delay.
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
      },
      fuzzy = { implementation = 'lua' },
      signature = { enabled = true },
    },
  },
}
