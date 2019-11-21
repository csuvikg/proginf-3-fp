import Data.List

dropSpaces :: String -> String
dropSpaces = dropWhile (==' ')

trim :: String -> String
-- trim s = reverse(dropSpaces (reverse (dropSpaces s)))
trim = dropSpaces . reverse . dropSpaces . reverse

monogram :: String -> String
-- monogram s = unwords (map (\n -> (head n) : ".") (words s))
monogram =  unwords . map ((:".") . head) . words

uniq :: Ord a => [a] -> [a]
uniq = map head . group . sort

