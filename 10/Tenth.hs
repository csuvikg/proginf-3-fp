-- Tenth
import Data.Char

map' :: (a -> b) -> [a] -> [b]
map' fn xs = [fn x | x <- xs]

filter' :: (a -> Bool) -> [a] -> [a]
filter' fn xs = [x | x <- xs, fn x]

upperToLower :: String -> String
upperToLower str = map' toLower [c | c <- str, isUpper c]

all' :: (a -> Bool) -> [a] -> Bool
all' _ []       = True
all' fn [x]     = fn x
all' fn (x:xs)
    | fn x      = all' fn xs
    | otherwise = False

any' :: (a -> Bool) -> [a] -> Bool
any' _ []        = False
any' fn [x]      = fn x
any' fn (x:xs)
    | not (fn x) = any' fn xs
    | otherwise  = True

hasLongLines :: String -> Bool
hasLongLines str = any' (\n -> n >= 3) (map' length (map' words (lines str)))
