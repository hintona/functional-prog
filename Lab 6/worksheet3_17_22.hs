{-
  Worksheet 03/17/22
  Topic: Higher Order Function
<<<<<<< HEAD
  Name: Alex Hinton
=======
  Name: <your name goes here>
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42
  Instruction: answer all the questions and submit the file.
  Total points: 40
  
Note:  Copy and paste your test runs after every question.
Note: The instructor may or may not grade all your answers given the time and other issues. But she will post a sample solution next week. Your responsibility is to try to solve all the problems, ask relevant questions, and crosscheck your answers with your classmates and/or with the sample solution.
-}


{-
[10 points total]
Problem 01: Unnamed Functions or Lambda Expressions
 a) Test each of the following lambda expressions/functions with three sample test cases.
-}
<<<<<<< HEAD
  square = (\x -> x * x)
  double = (\x -> x + x)

  squareList = (\[x] -> x * x)
=======
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}


  square = (\x -> x * x)

  double = (\x -> x + x)
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42
 
{- 
 b) Write an expression to apply the square function on this list [1, (-1), 2, (-2), 3, (4/10)]. 
 c) Write an expression to apply the double function on this list [1, (-1), 2, (-2), 3, (4/10)].
Note: If your compiler doesn't let you pass the list due to type restrictions, modify the type signatures of both of the functions like the followings:
square :: Num a => a -> a
double :: Num a => a -> a
-}
<<<<<<< HEAD

=======
  squareList = map (\x -> x * x)

  doubleList = map (\x -> x + x)
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42
{-
 d) Find the sample output of the following expression: map (\x -> double (square x))[1..5]
 e) Find an alternative way to complete the same task as 1.d). You may consider list comprehension as a possible technique.
 f) Find the sample output of the following expression: map (\x -> square (double x))[1..5]
 g) Find an alternative way to complete the same task as 1.f). You may consider list comprehension as a possible technique.
 h) Write a lambda expression to implement the following function:
   f(x, y, z) = x^3 + 3x^2y + 3xy^2 + y^3 - z
   Test your expression with x = 1, y = 1, z = 1.

 i) Write a lambda expression to implement the following function:
   f (x, y) = g(x, y)+ 2xy, where g (x, y) = x^2 + y^2
  Test your expression with x = 1, y = 2.
 j) Zip two lists [1, 3, 5] and [2, 4 ,6] with function f (x, y). You may consider using the zipWith function.
-}

<<<<<<< HEAD
{-
*** Problem 01 :: Answers

<Put your answers here ...>
a) *Main> square 2
4
*Main> square 13
169
*Main> square 8
64
*Main> double 6
12
*Main> double 12
24
*Main> double 1
2

b)
=======
  g = \x y -> x^2 + y^2

  f = \x y -> g x y + 2*x*y

  zipWithF = zipWith (\x y -> f x y)
{-
*** Problem 01 :: Answers
a) *Main> square 4
16
*Main> square 12
144
*Main> square 3
9
*Main> double 4
8
*Main> double 12
24
*Main> double 3
6

d)*Main> map (\x -> double (square x))[1..5]
[2,8,18,32,50]

f)*Main> map (\x -> square (double x))[1..5]
[4,16,36,64,100]

>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42
-}


{-
[10 points]
Problem 02: 
    Test the output for each of the following expressions. Record the test cases.

Note: Flip simply takes a function and returns a
      function that is like our original function,
      only the first two arguments are flipped.

  a1) zip [1..10] "hello"
      and a2) flip zip [1..10] "hello"
  b1) zipWith (/) [1..10] [10, 10, 10, 10, 10]
     and b2)zipWith (flip (/)) [1..10] [10, 10, 10, 10, 10]
  c1) zipWith (-) [1..10] [10,9,8,7,6,5,4,3,2,1]
     and c2) zipWith (flip (-)) [1..10] [10,9,8,7,6,5,4,3,2,1]
  d1) (++) "hi" " there"
     and d2) flip (++) "hi" " there"

  e1) zipWith (^) [1..10] (replicate 10 2)
     and e2) zipWith (flip (^)) [1..10] (replicate 10 2)

-}


{-
*** Problem 02 :: Answers
<<<<<<< HEAD

<Put your answers here ...>
=======
a1)zip [1..10] "hello"
[(1,'h'),(2,'e'),(3,'l'),(4,'l'),(5,'o')]

a2)flip zip [1..10] "hello"
[('h',1),('e',2),('l',3),('l',4),('o',5)]

b1)zipWith (/) [1..10] [10, 10, 10, 10, 10]
[0.1,0.2,0.3,0.4,0.5]

b2)zipWith (flip (/)) [1..10] [10, 10, 10, 10, 10]
[10.0,5.0,3.3333333333333335,2.5,2.0]

c1) zipWith (-) [1..10] [10,9,8,7,6,5,4,3,2,1]
[-9,-7,-5,-3,-1,1,3,5,7,9]

c2)zipWith (flip (-)) [1..10] [10,9,8,7,6,5,4,3,2,1]
[9,7,5,3,1,-1,-3,-5,-7,-9]

d1)(++) "hi" " there"
"hi there"

d2)flip (++) "hi" " there"
" therehi"

e1)zipWith (^) [1..10] (replicate 10 2)
[1,4,9,16,25,36,49,64,81,100]

e2)zipWith (flip (^)) [1..10] (replicate 10 2)
[2,4,8,16,32,64,128,256,512,1024]
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42

-}


{-
[10 points]

Problem 03: The left fold, foldl and the right fold, foldr

The binary function is applied between the starting value and the head of the list.
That produces a new accumulator value and the binary function is called with that
value and the next element, etc.

Sample IO:
Prelude> foldl (+) 0 [1..10]
55
Prelude> foldl (+) 0 [1..5]
15
Prelude> foldl (-) 0 [1..5]
-15
Prelude> foldl (*) 1 [1..5]
120
Prelude> foldl (/) 1 [1..5]
8.333333333333333e-3
Prelude> foldl (+) 0 (map (\x -> x^2) [1..5])
55
Prelude> foldl (+) 0 ((map (\x -> x / 10)) [1..5])
1.5
Prelude> foldl (+) 0 ((map (\x -> x / 2)) [1..5])
7.5
 
Given that the operation of foldl is clear,

a) define an expression that
<<<<<<< HEAD
folds a list of lists by summing up the elements from each internal list. Though there are multiple ways of writing the expression, in this case, you must use foldl as part of your expression. You are allowed to use built-in functions like map, sum, +, etc. in your expression.
=======
folds a list of lists by summing up the elements from each internal list. Though there are multiple ways of writing the expression, in this case, 
you must use foldl as part of your expression. You are allowed to use built-in functions like map, sum, +, etc. in your expression.
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42

Sample IO:

*Main> <your expression> [[1], [1, 2], []]
[1,3,0]
*Main> <your expression> [[1..5], [10, 10, 10], [2, 3, 6]]
 [15,30,11]

b) The right fold, foldr, works similarly to the left fold,
  only the accumulator eats up the values from the right.
 Test all the sample IO and problem 3a) with foldr.
 Record all your answers in the answer block.
 
-}

{-
*** Problem 03 :: Answers

<<<<<<< HEAD
<Put your answers here ...>
=======
a)  map (\x -> foldl (+) 0 x) [[1],[1,2],[]]
[1,3,0]
map (\x -> foldl (+) 0 x) [[1..5], [10,10,10], [2,3,6]]
[15,30,11]

b)*Main> map (\x -> foldr (+) 0 x) [[1],[1,2],[]]
[1,3,0]
*Main> map (\x -> foldr (+) 0 x) [[1..5], [10,10,10], [2,3,6]]
[15,30,11]
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42

-}

{-
[10 points]
Problem 04: Filter

filter is another higher order function that takes a boolean function
and a list as input and returns a list as output.
It takes each element (say, a) from the input list (say, ilst) and puts it in the output list (say, olst)
if the input satisfies boolean function (i.e. if it is True).

Sample IO:

Prelude> odd x = (x `mod` 2 == 1)
Prelude> odd 2
False
Prelude> odd 3
True
Prelude> filter odd [1..10]
[1,3,5,7,9]
Prelude>
Prelude> filter (>4) [1..10]
[5,6,7,8,9,10]
Prelude> filter (\x -> (x>4) && (x< 7)) [1..10]
[5,6]

Now, complete the following tasks:
 
 a) Apply filter on a list of strings to collect the strings that are of odd length.
 b) Apply filter on a list of numbers to collect the ones that are divisible by 10.
 c) Apply filter of a list of tuples, (a, b) (where a is a Char and b is a Number, like ('A', 10)),
   to collect the tuples if the character is a capital letter.
   [Hint: elem is a built-in function that you may find useful here.
      http://zvon.org/other/haskell/Outputprelude/elem_f.html]
 d) Apply filter on a string to collect the vowels. For example, if test input is
   "COLLECT THE VOwels.", then the output should be "OEEOe".
 e) Implement your version of the filter function. Call it filter1.

-}


{-
*** Problem 04 :: Answers

<<<<<<< HEAD
<Put your answers here ...>
=======
a) filter (\x -> (length x) `mod` 2 == 1) ["goodbye","everyone","have","a","nice","day"]
["goodbye","a","day"]

b) filter (\x -> (x `mod` 10) == 0) [10,15,20,25,30]
[10,20,30]

c) filter (\(x,y) -> x `elem` "ABCDEFGHIJKLMNOPQRSTUVWXYZ") [('A',10),('b',20),('C',30),('d',40)]
[('A',10),('C',30)]

d) filter (\x -> x `elem` "aAeEiIoOuU") "I love vOwEls"
"IoeOE"
>>>>>>> d650058cf3b4d9090b22c6e9065eccca0edfeb42

-}
