import std/[unittest, strutils, sequtils, stats, math]


type RGB = tuple
  r, g, b: int

# --- helpers

func parseRGB(hexColor: string): RGB =
  (parseHexInt hexColor[1..2], parseHexInt hexColor[3..4], parseHexInt hexColor[5..6])

# --- main
func mix(hexColors: seq[string]): string =
  let
    rgbs = hexColors.map parseRGB
    rs = rgbs.mapit it.r
    gs = rgbs.mapit it.g
    bs = rgbs.mapit it.b

  template hex(ns): untyped =
    toHex(toInt floor mean ns, 2)

  '#' & hex(rs) & hex(gs) & hex(bs)

# --- tests
suite "helpers":
  test "parseRGB":
    check parseRGB("#ff0a12") == (255, 10, 18)

suite "main":
  test "#FFFFFF #000000":
    check mix(@["#FFFFFF", "#000000"]) == "#7F7F7F" # or "#808080" depending on how you round

  test "#FF0000 #00FF00 #0000FF":
    check mix(@["#FF0000", "#00FF00", "#0000FF"]) == "#555555"
