local ls = require "luasnip"
local s = ls.snippet
local f = ls.function_node
local d = ls.dynamic_node
local fmta = require("luasnip.extras.fmt").fmta

local helpers = require "snippets.luasnip_func"
local get_visual = helpers.get_visual

-- Return snippet tables
return {
  -- LEFT/RIGHT PARENTHESES
  s(
    { trig = "([^%a])l%(", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\left(<>\\right", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- LEFT/RIGHT SQUARE BRACES
  s(
    { trig = "([^%a])l%[", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\left[<>\\right", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- LEFT/RIGHT CURLY BRACES
  s(
    { trig = "([^%a])l%{", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\left\\{<>\\right\\", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- LEFT/RIGHT | |
  s(
    { trig = "([^%a])l%|", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\left|<>\\right|", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- BIG PARENTHESES
  s(
    { trig = "([^%a])b%(", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\big(<>\\big", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- BIG SQUARE BRACES
  s(
    { trig = "([^%a])b%[", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\big[<>\\big", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- BIG CURLY BRACES
  s(
    { trig = "([^%a])b%{", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
    fmta("<>\\big\\{<>\\big\\", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- ESCAPED CURLY BRACES
  s(
    { trig = "([^%a])\\%{", regTrig = true, wordTrig = false, snippetType = "autosnippet", priority = 2000 },
    fmta("<>\\{<>\\", {
      f(function(_, snip) return snip.captures[1] end),
      d(1, get_visual),
    })
  ),
  -- LATEX QUOTATION MARK  ????? what this mean
  s(
    { trig = "``", snippetType = "autosnippet" },
    fmta("``<>''", {
      d(1, get_visual),
    })
  ),
}
