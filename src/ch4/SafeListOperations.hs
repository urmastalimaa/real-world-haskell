module CH4.SafeListOperations(safeHead, safeTail, safeLast, safeInit, splitWith) where

safeHead:: [a] -> Maybe a
safeHead [] = Nothing
safeHead xs = Just . head $ xs

safeTail:: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail xs = Just . tail $ xs

safeLast:: [a] -> Maybe a
safeLast [] = Nothing
safeLast xs = Just . last $ xs

safeInit:: [a] -> Maybe [a]
safeInit [] = Nothing
safeInit xs = Just . init $ xs


splitWith:: (a -> Bool) -> [a] -> [[a]]
splitWith _ [] = []
splitWith pred xs = fst : splitWith pred (drop 1 snd)
  where (fst, snd) = break pred xs
