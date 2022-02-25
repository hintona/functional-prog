-- Alex Hinton

my_function :: Fractional a => [a] -> a
my_function x = head (reverse x) --definition

squareXY :: Integral a => a -> a -> a
squareXY x y = x * x + y * y

play_tuples x y = ( head x, head y )

{-
*Main> squareXY 3 (2 / 2)

<interactive>:14:1: error:
    • Ambiguous type variable ‘a0’ arising from a use of ‘print’
      prevents the constraint ‘(Show a0)’ from being solved.
      Probable fix: use a type annotation to specify what ‘a0’ should be.
      These potential instances exist:
        instance Show Ordering -- Defined in ‘GHC.Show’
        instance Show Integer -- Defined in ‘GHC.Show’
        instance Show a => Show (Maybe a) -- Defined in ‘GHC.Show’
        ...plus 22 others
        ...plus 13 instances involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In a stmt of an interactive GHCi command: print it

*Main> squareXY 3 2
13
*Main> squareXY 1 8
65
-}
