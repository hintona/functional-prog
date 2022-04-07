import System.IO

interpret :: [String] -> [Int]
interpret ys = [ read y :: Int | y <- ys]

main = do
    contents <- readFile "../dataset/numbers.dat"
    let xs = lines contents
    let x = interpret xs
    let fin = sum x
    print fin
    --writeFile "../dataset/part0_output.dat" contents
