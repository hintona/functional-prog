{-
***************************************************************************
*                           CSCI 2100: Spring 2022                        *
*                                 Exam II                                 *
*                                Problem 03                               *
*              Question prepared by Fahmida Hamid, Asst. Prof, NCF        *
*                Solution prepared by Alex Hinton                         *
***************************************************************************

-}


-- a
sumDigits :: Int -> Int
sumDigits 0 = 0
sumDigits 1 = 1
sumDigits 2 = 2
sumDigits 3 = 3
sumDigits 4 = 4
sumDigits 5 = 5
sumDigits 6 = 6
sumDigits 7 = 7
sumDigits 8 = 8
sumDigits 9 = 9
sumDigits x = headOfInt x + sumDigits (tailOfInt x)

headOfInt :: Int -> Int 
headOfInt x = read [head (show x)] :: Int

tailOfInt :: Int -> Int 
tailOfInt x = read (tail (show x)) :: Int
    
-- b 

-- write expressions to ...

z = [1, 10, 112, 13, 99, 1000]

sumList :: [Int] -> [Int]
sumList xs = [sumDigits x | x <- xs]

findLargestSum :: [Int] -> Int
findLargestSum xs = head ([x | x <- xs, sumDigits x == largestOf (sumList xs)])


largestOf [x]  = x
largestOf [x, y] = if (x > y) then x else y
largestOf (x:xs) = largestOf [x, (largestOf xs)]  

x = sumList z
t = findLargestSum z

-- uncomment the above expressions once fixed.

{-
- expected output/values of x and t after evaluation

x = [1,1,4,4,18,1]
t = 99

-}
