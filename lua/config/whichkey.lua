local wk = require("which-key")

wk.add({
    { "<leader>f", group = "Find" },
    { "<leader>ff", desc = "Find File" },
    { "<leader>fb", desc = "Find Buffer" },
    { "<leader>fh", desc = "Find Help" },
    { "<leader>fw", desc = "Find Text" },

    { "<leader>e", desc = "File Manager" },
    { "<leader>b", desc = "File Manager" },

    { "<leader>o", desc = "Git Status" },
    { "<leader>g", group = "Git" },
    { "<leader>gb", desc = "Branches" },
    { "<leader>gc", desc = "Commits" },
    { "<leader>gs", desc = "Status" },

    { "<leader>x", desc = "Close Buffer" },

    { "<leader>h", desc = "No highlight" },
})

-- wk.register({
--     f = {
--         name = "Find",
--         f = {"Find File"},
--         b = {"Find Buffer"},
--         h = {"Find Help"},
--         w = {"Find Text"}
--     },
--     e = {"File Manager"},
--     b = {"File Manager"},
--     o = {"Git status"},
--     x = {"Close Buffer"},
--     w = {"Save"},
--     h = {"No highlight"},
--     g = {name = "Git", b = "Branches", c = "Commits", s = "Status"},
-- }, {prefix = "<leader>"})

