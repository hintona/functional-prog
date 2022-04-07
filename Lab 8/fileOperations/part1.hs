import System.IO


main = do
     contents <- readFile "../dataset/numbers.dat"
     
     print contents
     --writeFile "../dataset/part0_output.dat" contents
