Polymorphism
 - can be achieved with type variables like:
 ```
head :: [a] -> a
head (x:_) = x
 ```
 - type variables are lowercased, built-in types are Uppercased
