import std/[os, strutils, strformat, rdstdin]

const
  nimCode = readFile "toolchain/add_issue/main.nim"
  readme = readFile "toolchain/add_issue/readme.md"

template input(msg): untyped =
  readLineFromStdin msg

proc getIssueInfo: tuple[name: string, number: int, link: string] =
  (
    input("issue name? "),
    parseInt input("issue number? "),
    input("issue link? ")
  )


when isMainModule:
  let
    (name, number, link) = getIssueInfo()
    dir = fmt"./issues/i{number}"
    help =
      readme
      .replace("<NUMBER>", $number)
      .replace("<NAME>", name)
      .replace("<URL>", link)


  createDir dir
  writeFile dir/"main.nim", nimCode
  writeFile dir/"readme.md", help
