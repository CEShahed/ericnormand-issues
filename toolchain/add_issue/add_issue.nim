import std/[os, strutils, strformat]

const
  nimCode = readFile "toolchain/add_issue/main.nim"
  readme = readFile "toolchain/add_issue/readme.md"
  problem = readFile "toolchain/add_issue/problem.md"


proc getIssueInfo: tuple[name: string, number: int] =
  echo "issue number? "
  result.number = parseInt stdin.readLine

  echo "issue name? "
  result.name = stdin.readLine


when isMainModule:
  let
    (name, number) = getIssueInfo()
    dir = fmt"./issues/i{number}"
    help =
      readme
      .replace("<1>", $number)
      .replace("<2>", name)


  createDir dir
  writeFile dir/"main.nim", nimCode
  writeFile dir/"readme.md", help
  writeFile dir/"problem.md", problem
