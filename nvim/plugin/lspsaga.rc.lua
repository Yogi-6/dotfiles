local status, saga = pcall(require, "lspsaga")

if not status then 
    print('failed to load lspsaga')
    return
end


saga.setup({
    ui = {
        winblend = 10,
        border = 'rounded',
        colors = {
            normal_bg = '#002b36'
        }
    },
    symbol_in_winbar = {
        enable = false
    }
})
