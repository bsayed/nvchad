---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>lo"] = { ":Lspsaga outline<CR>", "lspsaga show outline" },
    ["<leader>ld"] = { ":Lspsaga peek_definition<CR>", "lspsaga peek definition" },
    ["<leader>lt"] = { ":Lspsaga peek_type_definition<CR>", "lspsaga peek type definition" },
    ["<leader>la"] = { ":Lspsaga code_action<CR>", "lspsaga code action" },
    ["<leader>lr"] = { ":Lspsaga rename<CR>", "lspsaga rename" },
    ["<leader>lh"] = { ":Lspsaga hover_doc<CR>", "lspsaga hover doc" },
    ["<leader>lc"] = { ":Lspsaga incoming_calls<CR>", "lspsaga incoming calls" },
    ["<leader>lg"] = { ":Lspsaga outgoing_calls<CR>", "lspsaga outgoing calls" },
    ["<leader>lf"] = { ":Lspsaga finder<CR>", "lspsaga find references" },
    ["<leader>lj"] = { ":Lspsaga diagnostic_jump_next<CR>", "lspsaga diagnostic jump next" },
    ["<leader>lk"] = { ":Lspsaga diagnostic_jump_prev<CR>", "lspsaga diagnostic jump prev" },
    ["<C-Right>"] = { ":vertical resize -5<CR>", "increase window size to the right" },
    ["<C-Left>"] = { ":vertical resize +5<CR>", "decrease window size to the left" },
    ["<C-Up>"] = { ":resize -5<CR>", "decrease window size upwords" },
    ["<C-Down>"] = { ":resize +5<CR>", "increase window size downwords" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
