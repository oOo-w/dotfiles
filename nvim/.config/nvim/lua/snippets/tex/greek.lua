local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

return {
  s({ trig = ";a", snippetType = "autosnippet" }, {
    t "\\alpha",
  }),
  s({ trig = ";b", snippetType = "autosnippet" }, {
    t "\\beta",
  }),
  s({ trig = ";r", snippetType = "autosnippet" }, {
    t "\\gamma",
  }),
  s({ trig = ";R", snippetType = "autosnippet" }, {
    t "\\Gamma",
  }),
  s({ trig = ";d", snippetType = "autosnippet" }, {
    t "\\delta",
  }),
  s({ trig = ";D", snippetType = "autosnippet" }, {
    t "\\Delta",
  }),
  s({ trig = ";e", snippetType = "autosnippet" }, {
    t "\\epsilon",
  }),
  s({ trig = ";o", snippetType = "autosnippet" }, {
    t "\\theta",
  }),
  s({ trig = ";O", snippetType = "autosnippet" }, {
    t "\\Oheta",
  }),
  s({ trig = ";l", snippetType = "autosnippet" }, {
    t "\\lambda",
  }),
  s({ trig = ";L", snippetType = "autosnippet" }, {
    t "\\Lambda",
  }),
  s({ trig = ";m", snippetType = "autosnippet" }, {
    t "\\mu",
  }),
  s({ trig = ";w", snippetType = "autosnippet" }, {
    t "\\omega",
  }),
  s({ trig = ";W", snippetType = "autosnippet" }, {
    t "\\Omega",
  }),
  s({ trig = ";p", snippetType = "autosnippet" }, {
    t "\\pi",
  }),
  s({ trig = ";P", snippetType = "autosnippet" }, {
    t "\\Pi",
  }),
  s({ trig = ";f", snippetType = "autosnippet" }, {
    t "\\phi",
  }),
  s({ trig = ";F", snippetType = "autosnippet" }, {
    t "\\Phi",
  }),
  s({ trig = ";s", snippetType = "autosnippet" }, {
    t "\\sigma",
  }),
  s({ trig = ";S", snippetType = "autosnippet" }, {
    t "\\Sigma",
  }),
  s({ trig = ";t", snippetType = "autosnippet" }, {
    t "\\tau",
  }),
}
