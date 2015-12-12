module Tree(
  Tree(Node, Empty),
) where

data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)
