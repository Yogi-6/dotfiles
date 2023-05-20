local status, autopairs = pcall(require, "nvim-autopairs")
if not status then 
    print('failed to load autopairs')
    return
end


autopairs.setup({
})

