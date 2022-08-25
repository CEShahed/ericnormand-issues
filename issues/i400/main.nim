import std/[unittest, strutils, strformat, stats, math]

type RGB = tuple
  r, g, b: int

# --- helpers

func parseHexColor(hexColor: string): RGB =
  (parseHexInt hexColor[1..2], parseHexInt hexColor[3..4], parseHexInt hexColor[5..6])

func toHexColor(r, g, b: int): string =
  template h(n): untyped = toHex(n, 2)
  fmt"#{h r}{h g}{h b}"

# --- main

func mix(hexColors: seq[string]): string =
  var acc = (newseq[int](), newseq[int](), newseq[int]())

  for hc in hexColors:
    let (r, g, b) = parseHexColor hc
    acc[0].add r
    acc[1].add g
    acc[2].add b

  template normal(numbers): untyped =
    toInt floor mean numbers

  toHexColor normal acc[0], normal acc[1], normal acc[2]

# --- tests
suite "helpers":
  test "parseHexColor":
    check parseHexColor("#ff0a12") == (255, 10, 18)

suite "main":
  test "#FFFFFF #000000":
    check mix(@["#FFFFFF", "#000000"]) == "#7F7F7F" # or "#808080" depending on how you round

  test "#FF0000 #00FF00 #0000FF":
    check mix(@["#FF0000", "#00FF00", "#0000FF"]) == "#555555"
