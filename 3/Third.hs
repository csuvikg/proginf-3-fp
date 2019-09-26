-- Third

-- Swtich-like contructs, pattern matching
not' :: Bool -> Bool
not' True = False
not' False = True

f :: Int -> Int
f 0 = 1
f 1 = 3
f n = n

isFruit :: String -> Bool
isFruit "apple" = True
isFruit "grape" = True
isFruit _       = False

xor :: Bool -> Bool -> Bool
xor False True = True
xor True False = True
xor _ _ = False

paren :: Char -> Char -> Bool
paren '(' ')' = True
paren '{' '}' = True
paren '[' ']' = True
paren _ _ = False

calc :: Int -> Char -> Int -> Int
calc x '+' y = x + y
calc x '-' y = x - y
calc x '*' y = x * y
calc x '/' y = x `div` y
