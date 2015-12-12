module SortBySublistLength where

import Data.List(sortBy)
import Data.Function(on)

sortBySublistLength:: [[Int]] -> [[Int]]
sortBySublistLength = sortBy (compare `on` length)
