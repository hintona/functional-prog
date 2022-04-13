{-
***************************************************************************
*                           CSCI 2100: Spring 2022                        *
*                                 Exam II                                 *
*                                Problem 01                               *
*              Question prepared by Fahmida Hamid, Asst. Prof, NCF        *
*                Solution prepared by Alex Hinton                         *
***************************************************************************

-}


module Problem01 where

data Parent = Parent {
         father :: String,
         mother :: String 
        } deriving (Show, Eq)

data Student = Student {
         name :: String,
         gpa :: Float,
         parent :: Parent 
        } deriving (Show, Eq)

sibling (Student _ _ (Parent f1 m1)) (Student _ _ (Parent f2 m2))
        |   f1 == f2 = True 
        |   m1 == m2 = True 
        |   otherwise = False
