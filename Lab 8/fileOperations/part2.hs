import System.IO

interpret :: [String] -> [Int]
interpret ys = [ read y :: Int | y <- ys]

main = do
    contents <- readFile "../dataset/numbers.dat"
    let input = lines contents
    let procInput = interpret input
    
    let fin = procInput
    print fin

    let output = map show fin
    let procOutput = unlines output
    writeFile "../dataset/part2_output.dat" procOutput
