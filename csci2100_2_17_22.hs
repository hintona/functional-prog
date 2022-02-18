my_function :: Fractional a => [a] -> a
my_function x = head (reverse x) --definition
squareXY :: Integral a => [a] -> a --fix this
squareXY x y = x * x + y * y
