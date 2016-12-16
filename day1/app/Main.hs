module Main where

import Lib

main :: IO ()
main = do
  let
    p = (N, 0, 0)
    moves = [Right' 2, Left' 1, Right' 2, Right' 1, Right' 1, Left' 3, Right' 3,
      Left' 5, Left' 5, Left' 2, Left' 1, Right' 4, Right' 1, Right' 3, Left' 5,
      Left' 5, Right' 3, Left' 4, Left' 4, Right' 5, Right' 4, Right' 3, Left' 1,
      Left' 2, Right' 5, Right' 4, Left' 2, Right' 1, Right' 4, Right' 4, Left' 2,
      Left' 1, Left' 1, Right' 190, Right' 3, Left' 4, Right' 52, Right' 5, Right'
      3, Left' 5, Right' 3, Right' 2, Right' 1, Left' 5, Left' 5, Left' 4, Right'
      2, Left' 3, Right' 3, Left' 1, Left' 3, Right' 5, Left' 3, Left' 4, Right'
      3, Right' 77, Right' 3, Left' 2, Right' 189, Right' 4, Right' 2, Left' 2,
      Right' 2, Left' 1, Right' 5, Right' 4, Right' 4, Right' 2, Left' 2, Left' 2,
      Left' 5, Left' 1, Right' 1, Right' 2, Left' 3, Left' 4, Left' 5, Right' 1,
      Left' 1, Left' 2, Left' 2, Right' 2, Left' 3, Right' 3, Left' 4, Left' 1,
      Left' 5, Left' 4, Left' 4, Right' 3, Right' 5, Left' 2, Right' 4, Right' 5,
      Right' 3, Left' 2, Left' 2, Left' 4, Left' 2, Right' 2, Left' 5, Left' 4,
      Right' 3, Right' 1, Left' 2, Right' 2, Right' 4, Left' 1, Left' 4, Left' 4,
      Left' 2, Right' 2, Left' 4, Left' 1, Left' 1, Right' 4, Left' 1, Left' 3,
      Left' 2, Left' 2, Left' 5, Right' 5, Right' 2, Right' 5, Left' 1, Left' 5,
      Right' 2, Right' 4, Right' 4, Left' 2, Right' 5, Left' 5, Right' 5, Right'
      5, Left' 4, Right' 2, Right' 1, Right' 1, Right' 3, Left' 3, Left' 3, Left'
      4, Left' 3, Left' 2, Left' 2, Left' 2, Right' 2, Left' 1, Left' 3, Right' 2,
      Right' 5, Right' 5, Left' 4, Right' 3, Left' 3, Left' 4, Right' 2, Left' 5,
      Right' 5]
    p' = foldl update p moves
  print $ distance p p'
