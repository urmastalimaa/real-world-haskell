main = interact interactCount
  where interactCount input = show (charCount input) ++ "\n"

lineCount = length . lines
wordCount = length . words

charCount:: String -> Int
charCount = length
