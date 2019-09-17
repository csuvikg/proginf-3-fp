## Requirements
 - exam every week (2 questions) - practical from previous homework
 - homework
 - contributes a combined 30% to final grade
 - exam at the end: theory, practice (70%)

 ## Links and materials
 - https://people.inf.elte.hu/poor_a/ - lecturer's site, materials
 - https://bead.inf.elte.hu/ - homeworks
 - https://www.haskell.org/platform/ - download Haskell installer
 - a chosen IDE like VS Code (https://code.visualstudio.com/)
 
 ## Notes
 - the language is typed (statically and strongly), can infer it from context, but it is advised to use explicitely, as it is documenting the code
 - infix syntax:
 ```haskell
 operand `operator` operand
 2 `divides` 4
 ```

  - basic types are sometimes insuffient, there are records [ordered pairs/tuples]:
```haskell
(2,3)
(True, 'a', "hello")
book1 = ("Lass csodat", "Beau Lotto", 2010, True)
```

Type check: :t, eg. :t book1
```
> :t book1
book1 :: ([Char], [Char], Integer, Bool)
```
 - note: there is a difference between `Int` and `Integer` types, `Int` having an upper bound of `2^64` and `Integer` being limitless (but slower, as it is not natively supported by the processor)
