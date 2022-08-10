import std/[os, strutils, strformat, rdstdin]

const
  nimCode = readFile "toolchain/add_issue/main.nim"
  readme = readFile "toolchain/add_issue/readme.md"


proc getIssueInfo: tuple[name: string, number: int, link: string] =
  (
    readLineFromStdin("issue name? "),
    parseInt readLineFromStdin("issue number? "),
    readLineFromStdin("issue link? ")
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
