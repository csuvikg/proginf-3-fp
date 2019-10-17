-- Sixth.hs

fact :: Integer -> Integer
fact 0 = 1
fact n = n * (fact (n - 1))

fib :: Int -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

memoized_fib :: Int -> Integer
memoized_fib = (map fib [0 ..] !!)
   where fib 0 = 0
         fib 1 = 1
         fib n = memoized_fib (n-2) + memoized_fib (n-1)

length' :: [Int] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

pow :: Int -> Int -> Int
pow _ 0 = 1
pow x y = x * pow x (y - 1)

range :: Int -> Int -> [Int]
-- range n n = [n]
range 0 n = [n]
range n m = n : range (n - 1) m
