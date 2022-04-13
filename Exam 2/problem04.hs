{-
***************************************************************************
*                           CSCI 2100: Spring 2022                        *
*                                 Exam II                                 *
*                                Problem 02                               *
*              Question prepared by Fahmida Hamid, Asst. Prof, NCF        *
*                Solution prepared by <your name goes here>               *
***************************************************************************

-}



main = do
     print "Enter a prefix arithmetic expression (like Add 3 4):"
     input <- getLine
     if null input then 
         return ()
     else do
         let z = postfixExpressionEvaluator (words input)
         print z
         main



postfixExpressionEvaluator expr = "I tried but I can't figure out how prefix notation works so I can't code it"