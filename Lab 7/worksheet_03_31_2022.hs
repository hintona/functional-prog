--Alex Hinton

data Day = Sat | Sun | Mon | Tue | Wed | Thurs | Fri
    deriving (Show, Eq, Ord, Enum, Bounded, Read)

nextDay :: Day -> Day
nextDay Fri = Sat
nextDay x = succ x

prevDay :: Day -> Day
prevDay Sat = Fri
prevDay x = pred x

isweekEnd :: Day -> Bool
isweekEnd x 
    | x == Sun = True 
    | x == Sat = True 
    | otherwise = False


data Color = Blue|Green|Purple 
    deriving (Show, Read, Eq, Ord)

data Point = Point Float Float 
    deriving (Show, Read)

data Shape = Circle Color Point Float | Rectangle Color Point
    Point deriving (Show, Read)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rectangle _ (Point x1 y1) (Point x2 y2))
    = (abs $ x2 - x1) * (abs $ y2 - y1)

detectColor :: Shape -> Color
detectColor (Circle color _ _) = color
detectColor (Rectangle color _ _) = color

getTheCenter :: Shape -> Point
getTheCenter (Circle _ cen _) = cen

getTheRadius :: Shape -> Float
getTheRadius (Circle _ _ rad) = rad


{-
    Problem 1:
    *Main> x = Sat
    *Main> x

    <interactive>:8:1: error:
        • No instance for (Show Day) arising from a use of ‘print’
        • In a stmt of an interactive GHCi command: print it
    *Main> print x

    <interactive>:9:1: error:
        • No instance for (Show Day) arising from a use of ‘print’
        • In the expression: print x
        In an equation for ‘it’: it = print x
    *Main> show x

    <interactive>:10:1: error:
        • No instance for (Show Day) arising from a use of ‘show’
        • In the expression: show x
        In an equation for ‘it’: it = show x
-}

{-
    Problem 2:
    *Main> x = Sat
    *Main> x
    Sat
    *Main> print x
    Sat
    *Main> show x
    "Sat"
-}

{-
    Problem 3:
    *Main> x = Sat
    *Main> y = Sun
    *Main> x == y

    <interactive>:14:1: error:
        • No instance for (Eq Day) arising from a use of ‘==’
        • In the expression: x == y
        In an equation for ‘it’: it = x == y
-}

{-
    Problem 4:
    *Main> x = Sat
    *Main> y = Sun
    *Main> x == y
    False
-}

{-
    Problem 7:
    *Main> minBound :: Day
    Sat
    *Main> maxBound :: Day
    Fri
    *Main> read "Sat" :: Day
    Sat
    *Main> x = (read "Sat" :: Day)
    *Main> x
    Sat
    *Main> y = succ (read "Sat" :: Day)
    *Main> y
    Sun
-}