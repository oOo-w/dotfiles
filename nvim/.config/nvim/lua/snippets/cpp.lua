local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local line_begin = require("luasnip.extras.expand_conditions").line_begin
return {
  s(
    { trig = "main", snippetType = "autosnippet" },

    fmta(
      [[
        int main(int argc, char** argv) {
            <>
            return 0;
        }
        ]],
      { i(1) }
    ),
    { condition = line_begin }
  ),
}
