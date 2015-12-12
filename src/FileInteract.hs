module FileInteract(
  fileInteract
) where

import System.Environment (getArgs)

interactWith function inputFile outputFile = do
  input <- readFile inputFile
  let output = function input
  writeFile outputFile output

fileInteract myFunction = do
  args <- getArgs
  case args of
    [input, output] -> interactWith myFunction input output
    _ -> putStrLn "error: exactly two arguments needed"
