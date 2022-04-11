import System.IO

addl xs = 
    if length xs > 1
        let num = (last xs) + (last (init xs))
        ys <- num
        ys ++ addl (init xs)
        return ys
    else 
        return (init xs)



main = do
    contents <- readFile "../dataset/numbers.dat"
    let input = lines contents
    let procInput = interpret input
    
    let fin = addl procInput
    print fin

    let output = map show fin
    let procOutput = unlines output
    writeFile "../dataset/part2_output.dat" procOutput
