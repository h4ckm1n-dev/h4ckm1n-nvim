-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

local mappings = {
  h = {
    name = "Ollama", -- This sets a label for all h-prefixed keybindings
    c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction" },
    g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction" },
    t = { "<cmd>ChatGPTRun translate<CR>", "Translate" },
    k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords" },
    d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring" },
    a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests" },
    o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code" },
    s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize" },
    f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs" },
    x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code" },
    r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit" },
    l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis" },
  },
}

-- Register the keybindings with a specific prefix
wk.register(mappings, { prefix = "<leader>" })

-- Assuming 'wk' is already required and set up as per earlier discussions
local telescope = require("telescope.builtin")

local lsp_mappings = {
  G = {
    name = "GoTo", -- Sub-group for navigation
    l = { vim.diagnostic.open_float, "Diagnostic Float" },
    s = { vim.lsp.buf.signature_help, "Signature Help" },
    D = { vim.lsp.buf.declaration, "Go to Declaration" },
    d = { telescope.lsp_definitions, "Go to Definition" },
    i = { telescope.lsp_implementations, "Go to Implementation" },
    T = { telescope.lsp_type_definitions, "Go to Type Definition" },
    r = { telescope.lsp_references, "Go to References" },
  },
}

-- Register the LSP keybindings
wk.register(lsp_mappings, { prefix = "<leader>" })
