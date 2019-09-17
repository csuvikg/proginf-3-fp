-- Sec.hs

n :: Int
n = 2

even' :: Int -> Bool
even' n = mod n 2 == 0

odd' :: Int -> Bool
odd' n = not (even' n)

divides :: Int -> Int -> Bool
divides a b = mod b a == 0

type Book = (String, String, Integer, Bool)

book1 :: Book
-- book1 :: (String, String, Integer, Bool)
book1 = ("Lass csodat", "Beau Lotto", 2010, True)

getTitle :: Book -> String
getTitle (title, _, _, _) = title
-- getTitle (title, author, year, availability) = title
