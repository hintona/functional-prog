{-

###########################################################
#		CSCI 2100, Spring 2022                              #
#			Exam 1                                           #
#		Questions prepared by Prof. Hamid                   #  
#    Due by: 03/03/22, 11: 59 PM (hard deadline)          #
#             Submitted by: Alex Hinton                   #
###########################################################

-}

{-
a) Answer all the questions.
b) It is an open-book, closed-person test. You are
   allowed to use any resource (books, tutorials, class notes) to 
   figure out the solutions but you are not allowed to
    -- ask for answers to any person
    -- post the question on any group (online or physical) for getting any kind of help
    -- discuss haskell-related issues/questions with anyone else
c) If you are stuck at any point, you are allowed to ask for help (email) from the 
   course instructor. She will give some hints.  
d) You will get partial credits for partially correct answers.
e) You are not allowed to change any function names.
-}


{-
#########################################################################
#              Problem 01:                                              # 
#       String and List Comprehension                                   #
#               Functions                                               #  
#########################################################################
-}

-- Part a: fix appendAll

appendAll :: [[a]] -> [[a]] -> [[a]]
appendAll xs ys = [ x ++ y | x <- xs, y <- ys ]

-- Part b: fix getTheSpecials

allThatContainsY xs y = [ x | x <- xs, y `elem` x ]

--Part c: fix appendAndReturnOnlyWithY

appendAndReturnOnlyWithY xs zs y = [ a | a <- appendAll xs zs, y `elem` a ]

{-
#########################################################################
#                      Problem 02:                                      #
#                  Types, Typeclasses                                   #
#########################################################################
-}

funny xx yy zz = (xx ++ zz) == yy

{-
*Main> :t funny
funny :: Eq a => [a] -> [a] -> [a] -> Bool
Question: Interpret the output of ":t funny" in your own words. 
Answer: funny takes in three lists and returns a boolean true or false
-}

expr x = [ z | z <- [1.. (sum [1..x])]]
{-
*Main> :t expr
expr :: (Num a, Enum a) => a -> [a]
Question: Interpret the output of ":t expr" in your own words.
Answer: expr takes a number and returns a list of numbers
-}

t = (3.5 :: Float) : [0.1, 0.2, 0.3]
{-
*Main> :t t
t :: [Float]
Question: Interpret the output of ":t t" in your own words.
Answer: t outputs a string of floats
-}

{-
#########################################################################
#                      Problem 03:                                      #
#                      Functions                                        #
#########################################################################
-}


{-
Define function f, g, and k 
-}

f x
  | x > 0 = 0.5
  | x == 0 = 0
  | otherwise = -0.5

g x = [ x^2 + 2*x + f x ]

k n x = [ g (x+z) | z <- [(-n)..n]]

{-
#########################################################################
#                      Problem 04:                                      #
#                   Analyzing Functions                                 #
#########################################################################
-}


goodBad :: (Num a, Enum a) => [a] -> [a]
goodBad xs = [product [1..z]| z <- reverse([2 * x | x<-xs])]

{-
Question: What does the goodBad function do? Give a brief explanation and add three test cases 
to demonstrate your explanation.
Answer: For each item in xs, it multiplies that item by 2, then reverses the order of the digits in the number,
then finds the factorial of that number. It prints these out in reverse order, so that the transformed first item
from the list becomes the last item when printed. 
ex. [1,12,3] returns [720, 42!, 2]
[1,1,3] returns [720,2,2]
[1,2,4] returns [40320,24,2]

-}
