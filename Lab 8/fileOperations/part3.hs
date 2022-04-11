import System.IO

countVowels :: String -> Int
countVowels "" = 0
countVowels x
    |   last x `elem` "AaEeIiOoUu" = 1 + countVowels (init x) 
    |   otherwise = countVowels (init x) 

main = do
    putStrLn "Enter a string:"
    enteredString <- getLine
    if null enteredString
        then return()
    else do
        let vowels = countVowels enteredString
        let output = enteredString ++ " >> " ++ show vowels ++ "\n"
        appendFile "../dataset/part3_output.dat" output
        main
