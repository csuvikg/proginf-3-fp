
 - lists can be concatendated like: [1, 2, 3] ++ [4]
 - iterating over a list: forEach-like constructs, like:
     - list comprehension: [ x * 2 | x <- [1..10] ] (doubles every val)
     - can filter list elements before function application, like:
         - [ x * 2 | x <- [1..10], even x ]
         - [ x * 2 | x <- [1..10], even x, x > 5 ]
         - eg. divisors of 12: [ x | x <- [1..12], 12 `mod` x == 0 ]
     - can create carthesian product:
         - [ x ^ y | x <- [1..5], even x, y <- [1..3], y /= 1 ]
         