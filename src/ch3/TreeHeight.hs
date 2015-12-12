module Ch3.TreeHeight(treeHeight) where

import Tree(Tree(Node, Empty))

treeHeight:: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node _ left right) = 1 + max (treeHeight left) (treeHeight right)
