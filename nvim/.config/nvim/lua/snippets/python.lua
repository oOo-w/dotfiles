local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local line_begin = require("luasnip.extras.expand_conditions").line_begin

return {
  s({ trig = "imnp", snippetType = "autosnippet" }, { t "import numpy as np" }, { condition = line_begin }),
  s(
    { trig = "implt", snippetType = "autosnippet" },
    { t "import matplotlib.pyplot as plt" },
    { condition = line_begin }
  ),
  s(
    { trig = "main", snippetType = "autosnippet" },
    fmta(
      [[
        if __name__ == "__main__":
            <>
        ]],
      { i(1) }
    ),
    { condition = line_begin }
  ),
}
