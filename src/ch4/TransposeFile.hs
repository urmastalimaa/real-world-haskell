import FileInteract(fileInteract)
import Data.List(transpose)

pad:: [String] -> [String]
pad xs = map (\ys -> ys ++ replicate (maxLength - length ys) ' ') xs
  where maxLength = maximum . map length $ xs

main = fileInteract $ unlines . transpose . pad . lines
