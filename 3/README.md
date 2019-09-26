## Pattern matching
 - switch in other languages. Tests input and defines output for it
 - order matters, matches first that evaluates true
 - can throw exception if pattern is non-exhaustive and falls through
 - exhaustive patterns/functions are called total functions
 - non-exhaustive patterns/functions are partial functions
   - partial functions are usually not desired as they are error-prone
   - running ghci with -Wall highlights errors like partial functions

 - _ can be used for not-used parameter (cannot be referenced)

 - people.inf.elte.hu/poor_a exercises