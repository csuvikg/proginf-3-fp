-- Ninth

take' :: Int -> [a] -> [a]
take' _ []     = []
take' 0 _      = []
take' n (x:xs) = x : (take' (n - 1) xs)


drop' :: Int -> [a] -> [a]
drop' 0 x      = x
drop' _ []     = []
drop' n (x:xs) = drop' (n - 1) xs


langAndRegion :: String -> (String, String)
langAndRegion s = (take' 2 s, drop' 3 s)


zip' :: [a] -> [b] -> [(a, b)]
zip' [] _          = []
zip' _ []          = []
zip' (a:as) (b:bs) = (a, b) : (zip' as bs)

unzip' :: [(a, b)] -> ([a], [b])
unzip' [] = []
-- unzip' (x:xs) = (fst x : , snd x : )
