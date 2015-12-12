module CH3 where

data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)


data List a = Cons a (List a)
            | Empty
              deriving (Show)

fromList:: [a] -> List a
fromList = foldr Cons Empty

toList:: List a -> [a]
toList (Cons x xs) = x : toList xs
toList Empty = []

data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
