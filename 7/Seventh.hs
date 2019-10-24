elem' :: Char -> String -> Bool
elem' _ []     = False
elem' c (x:xs)
    | c == x = True
    | otherwise = elem' c xs

and' :: [Bool] -> Bool
and' []     = True
and' (x:xs) = x && and' xs

sum' :: [Int] -> Int
sum' []     = 0
sum' [n]    = n
sum' (a:ax) = a + sum' ax

last' :: [Int] -> Int
last' [n]    = n
last' (x:xs) = last' xs

or' :: [Bool] -> Bool
or' []     = False
or' (x:xs) = x || or' xs

