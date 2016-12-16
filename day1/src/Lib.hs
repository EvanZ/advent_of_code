module Lib where

data Move = Left' Int | Right' Int deriving (Eq, Ord, Read)
instance Show Move where
    show (Left' x) = "L" ++ show x
    show (Right' x) = "R" ++ show x
data Abs = N | E | S | W deriving (Show, Eq, Ord)

update :: (Abs, Int, Int) -> Move -> (Abs, Int, Int)
update (N, x, y) m =
    case m of
        Left' d -> (W, x - d, y)
        Right' d -> (E, x + d, y)
update (E, x, y) m =
    case m of
        Left' d -> (N, x, y + d)
        Right' d -> (S, x, y - d)
update (S, x, y) m =
    case m of
        Left' d -> (E, x + d, y)
        Right' d -> (W, x - d, y)
update (W, x, y) m =
    case m of
        Left' d -> (S, x, y - d)
        Right' d -> (N, x, y + d)

distance :: (Abs, Int, Int) -> (Abs, Int, Int) -> Int
distance (_, x, y) (_, x', y') = abs (x'-x) + abs (y'-y)
