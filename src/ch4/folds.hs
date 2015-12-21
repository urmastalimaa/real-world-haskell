module Folds where

import Data.Char (digitToInt)

asInt:: String -> Int
asInt [] = error "No digits"
asInt ('-':chars) = - asInt chars
asInt xs = foldl (\acc c -> acc * 10 + digitToInt c) 0 xs

concat :: [[a]] -> [a]
concat = foldr (++) []
