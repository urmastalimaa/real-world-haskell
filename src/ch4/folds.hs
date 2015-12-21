module Folds where

import Data.Char (digitToInt)

asInt:: String -> Int
asInt [] = error "No digits"
asInt ('-':chars) = - asInt chars
asInt xs = foldl (\acc c -> acc * 10 + digitToInt c) 0 xs

concat :: [[a]] -> [a]
concat = foldr (++) []

-- recursion
takeWhile1 :: (a -> Bool) -> [a] -> [a]
takeWhile1 pred (x:xs)
  | pred x    = x : takeWhile1 pred xs
  | otherwise = []
takeWhile1 _ [] = []

takeWhile2 :: (a -> Bool) -> [a] -> [a]
takeWhile2 pred = foldr (\x acc -> if pred x then x:acc else acc) []

groupBy :: (a -> a -> Bool) -> [a] -> [[a]]
groupBy check = foldr group [[]]
        where group _ [] = [[]]
              group x ([]: zs) = [x] : zs
              group x zss@((y:ys):zs)
                | check x y = (x:y:ys):zs
                | otherwise = [x]: zss

-- any cycle words unlines

any :: (a -> Bool) -> [a] -> Bool
any pred = foldr (\x acc -> pred x || acc) False

-- cycle is interesting

words :: String -> [String]
words = foldr words' [[]]
  where words' _ [] = [[]]
        words' ' ' xss@([]:_) = xss
        words' ' ' xss = []:xss
        words' c (xs:xss) = (c:xs):xss
