-- First.hs

n = 2

s = "hello"

even' n = mod n 2 == 0

-- odd' n = mod n 2 /= 0
odd' n = not (even' n) 
-- if parenthesis is not used, calls 'not' func with two params
