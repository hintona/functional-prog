data Cell = Cell {
    state :: WallOrPath,
    xCoord :: Integer,
    yCoord :: Integer
} deriving(Show, Eq)

data WallOrPath = Wall | Path
    deriving(Show, Eq, Ord, Enum, Bounded, Read)

setMaze x y t
    | (x,y) `elem` t = Cell{state = Path, xCoord = x, yCoord = y}
    | otherwise = Cell{state = Wall, xCoord = x, yCoord = y}

t = [(1,1),(10,10),(1,2),(2,2),(3,2),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,7),(6,7),(6,6),(6,5),(7,5),(8,5),(8,6),(8,7),(8,8),(8,9),(9,9),(10,9)]

-- creates a list of cells 
genMaze xs ys = [ setMaze x y t | x <- xs, y <- ys ]

genTestMaze xs ys = [ Cell{state = Path, xCoord = x, yCoord = y} | x <- xs, y <- ys ]

getState (Cell state _ _) = state

isPath x = getState x == Path

getCoords (Cell _ x y) = (x,y)

--Order: down, right, up, left
solveMaze :: [Cell] -> Integer -> Integer -> [Char]
solveMaze maze 10 10 = "I've solved the maze!"
solveMaze maze currX currY
    | canMove maze (currX+1) currY = moveDown maze (currX+1) currY
    | canMove maze currX (currY+1) = moveRight maze currX (currY+1)
    | canMove maze (currX-1) currY = moveUp maze (currX-1) currY
    | canMove maze currX (currY-1) = moveLeft maze currX (currY-1)
    | otherwise = "Something's wrong. I'm stuck in this maze!"

-- Same thing as the initial solveMaze, but attempts to move up last
moveDown :: [Cell] -> Integer -> Integer -> [Char]
moveDown maze 10 10 = "I've solved the maze!"
moveDown maze currX currY
    | canMove maze (currX+1) currY = moveDown maze (currX+1) currY
    | canMove maze currX (currY+1) = moveRight maze currX (currY+1)
    | canMove maze currX (currY-1) = moveLeft maze currX (currY-1)
    | canMove maze (currX-1) currY = moveUp maze (currX-1) currY
    | otherwise = "Something's wrong. I'm stuck in this maze!"

-- Same thing as the initial solveMaze, but attempts to move down last
moveUp :: [Cell] -> Integer -> Integer -> [Char]
moveUp maze 10 10 = "I've solved the maze!"
moveUp maze currX currY
    | canMove maze currX (currY+1) = moveRight maze currX (currY+1)
    | canMove maze (currX-1) currY = moveUp maze (currX-1) currY
    | canMove maze currX (currY-1) = moveLeft maze currX (currY-1)
    | canMove maze (currX+1) currY = moveDown maze (currX+1) currY
    | otherwise = "Something's wrong. I'm stuck in this maze!"

-- Same thing as the initial solveMaze, but attempts to move left last
moveRight :: [Cell] -> Integer -> Integer -> [Char]
moveRight maze 10 10 = "I've solved the maze!"
moveRight maze currX currY
    | canMove maze currX (currY+1) = moveRight maze currX (currY+1)
    | canMove maze (currX-1) currY = moveUp maze (currX-1) currY
    | canMove maze (currX+1) currY = moveDown maze (currX+1) currY
    | canMove maze currX (currY-1) = moveLeft maze currX (currY-1)
    | otherwise = "Something's wrong. I'm stuck in this maze!"

-- Same thing as the initial solveMaze, but attempts to move right last
moveLeft :: [Cell] -> Integer -> Integer -> [Char]
moveLeft maze 10 10 = "I've solved the maze!"
moveLeft maze currX currY
    | canMove maze (currX-1) currY = moveUp maze (currX-1) currY
    | canMove maze (currX+1) currY = moveDown maze (currX+1) currY
    | canMove maze currX (currY-1) = moveLeft maze currX (currY-1)
    | canMove maze currX (currY+1) = moveRight maze currX (currY+1)
    | otherwise = "Something's wrong. I'm stuck in this maze!"

canMove maze x y = True `elem` ([isPath m | m <- maze, (x,y) == getCoords m])