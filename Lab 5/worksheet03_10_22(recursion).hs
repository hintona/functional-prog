{- 

   worksheet 03/10/22 
   topic: recursion
   name: Alex Hinton
   Total points: 60

-}


{-
[6 points] 
Problem 00: Brushing Up

	 a) Test function `findingMin` with the following arguments: [3], [7, 3], [7, -7], [9..100], [13, 5, 3, -1]
         b) State the base case(s) in your own words.
         c) State the recursive case in your own words

    The base case is if there is only one item in the list that we give the function, in which case it just returns that single item.
    The recursive case takes the stored (or first) item of the list, checks it against the next item of the list, and stores the smaller of the two.
    In both cases, it will return the smallest number in the list 
-}


findingMin [x]  = x
findingMin [x, y] = if (x < y) then x else y
findingMin (x:xs) = findingMin [x, (findingMin xs)]  



{-
[8 points]
Problem 01: What does it do?
    a) Test function `somefunction1` several times.
    b) Explain what the function does in your own words.
    c) What is the base case?
    d) What is the recursive case?
-}

somefunction1 :: Integral a => a -> a -> a
somefunction1 a 0 = a
somefunction1 a b = somefunction1 b (a `mod` b)   


{-
[8 points]
Problem 02: What does it do?
    a) Test function `allOfYou` several times.
    b) Explain what the function does in your own words.
    c) What is the base case?
    d) What is the recursive case?

-}

allOfYou [x] = x
allOfYou (x1: x2: xs) = allOfYou ((somefunction1 x1 x2) : xs)


{-
[8 points]
Problem 03: What does it do?
    a) Test function `addOnlyOdds` several times.
    b) Explain what the function does in your own words.
    c) What is the base case?
    d) What is the recursive case?

    This function adds together all of the odd numbers in a given list and returns the sum of them
    The base case, where the list is empty, returns a 0
    In the recursive case, it checks if the current number is odd and if it is, adds it to the running sum.
    If the current number is not odd, then it does not add anything to the running sum and moves on.
 
-}
addOnlyOdds [] = 0
addOnlyOdds (x:xs) 
    | (x `mod` 2 == 1) = x  + addOnlyOdds xs
    | otherwise = addOnlyOdds xs 


{-
[10 points]
Problem 04: What does it do?
    a) Test function `operate` several times.
    b) Explain what the function does in your own words.
    c) What is the base case?
    d) What is the recursive case?
    e) Find what happens if we test the function with a negative number.
    f) Fix the function so that it stops generating numbers if n is negative.
-}

operate 1 = [ 1 ]
operate n = 2*n - 1 : operate (n-1)

{-
[4 points]
Problem 05: Write a recursive function that does the same work as the stated function palindrome.
  meaning,
           avoid using reverse to reverse the string 
           avoid using  == to test the equality between two strings, but you may use it for checking 
             the equality between two characters
-}

palindrome :: [Char] -> Bool
palindrome x 
 | (x == reverse(x)) = True
 | otherwise = False




{-
[4 points]
Problem 6: Rewrite the following function using recursion.
    You may comment out the given function before writing your version.

-}

allPositiveNumbers xs = sum [ x | x <- xs, x > 0]



{-
[4 points]

Problem 07: Write a function that 
   --> takes a list of tuples as input  (where each tuple has 2 values, say: a and b where a is a character and b is it's frequency count on something)
   --> returns the tuple with maximum frequency count.

Sample IO:

*Main> aTuplewithMaxFreq [('a', 570), ('z', 90), ('*', 1000)]
('*',1000)

-}





{-
[8 points]
Problem 08: Remove Duplicates

Write a function `removeDuplicate` that takes a list as input and returns a list by discarding the duplicates from the given input list. It is okay if your generated list does not maintain the order of input.

Sample IO:

*Main> removeDuplicate [1,2,3,4,5,4,3,2,1,5,4,3,2,1]
[5,4,3,2,1]
*Main> removeDuplicate "Hello"
"oleH"
*Main> removeDuplicate "testest"
"set"


-}