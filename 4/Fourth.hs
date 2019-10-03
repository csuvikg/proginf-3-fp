-- Fourth
import Data.Char

headInt :: [Int] -> Int
headInt (n:ns) = n

isSingleton :: [Int] -> Bool
isSingleton (_:[]) = True
isSingleton _      = False

hasTwoElements :: [Int] -> Bool
hasTwoElements (_:_:[]) = True
hasTwoElements _        = False

toUpperFirst :: String -> String
toUpperFirst []           = []
toUpperFirst (first:rest) = (toUpper first) : rest

tailInt :: [Int] -> [Int]
tailInt []       = []
tailInt [_]      = []
tailInt (_:rest) = rest

nullInt :: [Int] -> Bool
nullInt [] = True
nullInt _  = False

isLetter' :: Char -> Bool
isLetter' a = elem (toUpper a) ['A'..'Z']
