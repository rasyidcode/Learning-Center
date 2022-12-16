-- First read our docs (completely) then check the example_config repo

local M = {}

-- Path to overriding theme and highlights files
-- local themes = require "custom.overidden_themes"
-- local highlights = require "custom.highlights"

M.ui = {
  theme = "gatekeeper",
}

-- override plugins
M.plugins = require('custom.plugins')

-- override keymaps
-- M.mappings = require('custom.mappings')

return M
