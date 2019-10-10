-- 5

divisors :: Int -> [Int]
divisors 0 = [1..]
divisors n = [ x | x <- [2..(n - 1)], n `mod` x == 0 ]

isPrime :: Int -> Bool
isPrime = null.divisors

allPositive :: [Int] -> Bool
allPositive = not.any(<0)

dominoes :: [(Int, Int)]
dominoes = [(a, b) | a <- [0..6], b <- [0..6], a >= b]

courses =
    [ ("Programozasi nyelvek II.", [("Horvath", "Istvan", "BDE91E"), ("Fodros", "Aniko", "DDA3KX")])
    , ("Imperativ programozas", [("Nemeth", "Eniko", "ALX1K0"), ("Horvath", "Istvan", "BDE91E")])
    , ("Funkcionalis programozas", [("Kiss", "Elemer", "ABCDE6"), ("Nagy", "Jakab", "CDE560")])
    ]

