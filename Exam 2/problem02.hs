{-
***************************************************************************
*                           CSCI 2100: Spring 2022                        *
*                                 Exam II                                 *
*                                Problem 02                               *
*              Question prepared by Fahmida Hamid, Asst. Prof, NCF        *
*                Solution prepared by Alex Hinton                         *
***************************************************************************

-}
import System.IO

generateBalancedParen :: Int -> [String]
generateBalancedParen 0 = [""]
generateBalancedParen n = [ "(" ++ x ++ ")" ++ y 
                               | m <- [0..(n-1)], x <- generateBalancedParen m, y <- generateBalancedParen (n-m-1)]      

main :: IO ()
main = do
    putStrLn "Please enter a number 1-10:"
    input <- getLine 
    let num = read input :: Int
    if num >= 10 || num < 0
        then return()
    else do
        let output = show num ++ " >> " ++  show (generateBalancedParen num) ++ "\n"
        appendFile "./part2_output.dat" output
        main
    

