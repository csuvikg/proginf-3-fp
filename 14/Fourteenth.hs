import Data.Char
import Data.Maybe

firstTwo :: [Bool] -> Bool
firstTwo []      = False
firstTwo [a]     = a
firstTwo (a:b:_) = a /= b

wordNumWithCapital :: String -> Int
wordNumWithCapital s = length (filter (\w -> isUpper (head w)) (words s))
-- wordNumWithCapital s = length . filter (isUpper . head)

minList :: [Int] -> [Int] -> [Int]
minList [] _          = []
minList _ []          = []
minList (a:as) (b:bs) = (min a b) : minList as bs

conditionalSum :: (Int -> Bool) -> [Int] -> Int
conditionalSum fn l = sum (filter fn l)

-- Does not work apparently
mapMaybe :: (a -> a) -> Maybe a -> Maybe a
mapMaybe fn a
    | a == Nothing = Nothing
    | otherwise    = Just (fn a)

modify :: (a -> Maybe a) -> [a] -> [a]
modify fn (a:as)
    | isNothing (fn a) = as
    | otherwise        = a : as
