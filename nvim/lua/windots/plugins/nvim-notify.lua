return {
    'rcarriga/nvim-notify',
    config = function()
        local notify = require('notify')

        notify.setup({
            merge_duplicates = false,
            background_colour = '#000000',
        })
    end
}
