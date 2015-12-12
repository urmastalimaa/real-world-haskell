module Palindrome where

palindrome:: [a] -> [a]
palindrome xs = xs ++ reverse xs

smartPalindrome:: Eq a => [a] -> [a]
smartPalindrome [] = []
smartPalindrome [x] = [x]
smartPalindrome (x:xs)
  | x == last xs =
    x : (smartPalindrome . init $ xs) ++ [last xs]
smartPalindrome xs = xs ++ (reverse . init $ xs)

isPalindrome:: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome (x:xs) = x == last xs && (isPalindrome . init $ xs)
