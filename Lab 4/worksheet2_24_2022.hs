-- Alex Hinton
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
-- Alex Hinton
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
import Data.Char (GeneralCategory(LowercaseLetter), isLower)
{-# HLINT ignore "Use camelCase" #-}
{-# HLINT ignore "Use guards" #-}

all_mods_g :: (Integral a, Num p) => a -> p
all_mods_g x
  | mod x  3 == 0 = 3
  | mod x 5 == 0 = 5
  | mod x 7 == 0 = 7
  | otherwise = 2

{-
*Main> all_mods_g 24
3
*Main> all_mods_g 10
5
*Main> all_mods_g 28
7
*Main> all_mods_g 19
2
-}

all_mods_f :: (Integral a, Num p) => a -> p
all_mods_f x =
    if mod x 3 == 0 then 3
    else if mod x 5 == 0 then 5
    else if mod x 7 == 0 then 7
    else 2

{-
*Main> all_mods_f 24
3
*Main> all_mods_f 10
5
*Main> all_mods_f 28
7
*Main> all_mods_f 19
2
-}

squareList :: Num a => [a] -> [a]
squareList xs = [ x^2 | x <- xs ]

zipl :: [a] -> [b] -> [(a, b)]
zipl xs ys = [ (a,b) | a <- xs, b <- ys ]

try :: Integral c => [c] -> [(c, c, c)]
try xs = [(x-1, x, x+1) | x <- xs, x `mod` 2 == 0 ]

{-
*Main> squareList [1, 2, 3, 4]
[1,4,9,16]
*Main> zipl [1,2,3] [4,5,6]
[(1,4),(1,5),(1,6),(2,4),(2,5),(2,6),(3,4),(3,5),(3,6)]
*Main> try [4,18,7]
[(3,4,5),(17,18,19)]
-}

all_mods_list xs = [ all_mods_g x | x <- xs]

{-
*Main> all_mods_list [1..10]
[2,2,3,2,5,3,7,2,3,5]
*Main> all_mods_list [13..28]
[2,7,3,2,2,3,2,5,3,2,2,3,5,2,3,7]
-}

trial_and_error10 xs ys = 
    [(x,y) | x <- xs, y <- ys, (x + y) `mod` 10 == 0]

trial_and_error xs ys = 
    [(x,y) | x <- xs, y <- ys, (x + y) `mod` 10 == 0 || (x+y) `mod` 3 == 0]

trial_and_error_strict xs ys = 
    [(x,y) | x <- xs, y <- ys, (x + y) `mod` 10 == 0 && (x+y) `mod` 3 == 0]

pairs :: [b] -> [(b, b)]
pairs xs = 
    zip 
        (drop ((length xs) `div` 3) xs)
        (take ((length xs) `div` 3) xs)


all_lowers :: [Char] -> [Char]
all_lowers s = 
    [ x | x <- s, isLower x ]