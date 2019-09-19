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
book2 = ("Bevezetes az analizisbe", "Simon Peter", 2013, True)
book3 = ("Harry Potter", "J. K. Rowling", 1998, False)
book4 = ("Clean Code", "Robert C. Martin", 2008, False)

library :: [Book]
library = [book1, book2, book3, book4]

getTitle :: Book -> String
getTitle (title, _, _, _) = title
-- getTitle (title, author, year, availability) = title

getAllTitles :: [String]
getAllTitles = map getTitle library

isAvailable :: Book -> Bool
isAvailable (_, _, _, availability) = availability

getAllAvailableBooks :: [String]
getAllAvailableBooks = map getTitle (filter isAvailable library)
