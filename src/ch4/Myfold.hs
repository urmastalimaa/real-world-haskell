myfoldl :: (a -> b -> a) -> a -> [b] -> a

myfoldl f z xs = foldr step id xs z
  where step x g a = g (f a x)

{-
foldr (+) 0 (1:2:[])
 + 1 (foldr (+) 0 (2:[]))
 + 1 (+ 2 (foldr (+) 0 [])
 + 1 (+ 2 (0))

 (foldr step id (1:2:[])) 0
 (step 1 (foldr step id (2:[]))) 0
 (step 1 (step 2 (foldr step id ([])))) 0
 (step 1 (step 2 (id))) 0
 (step 1 (step 2 id)) 0
 (step 1 (\a -> id ((+) a 2))) 0
 (\a -> (\a_2 -> id ((+) a_2 2)) ((+) a 1)) 0
 id ((+) ((+) 0 1) 2))
 id ((+) 1 2))
 id (3))
 3
-}

main =
  print $ myfoldl (+) 0 [1..2]
