{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Lloyd15 where

import Control.Exception (assert)

adjacent = [[1,4],[0,2,5],[1,3,6],[2,7],
        [0,5,8], [1,4,6,9], [2,5,7,10], [3,6,11],
        [4,9,12], [5,8,10,13], [6,9,11,14], [7,10,15],
        [8,13], [9,12,14], [10,13,15], [11, 14]]

newtype Swap a = S ((Int,a), (Int,a)) deriving Show
type Matrix a = [(Int, a)]

generateBoard :: Int -> Int -> [a] -> Matrix a
generateBoard boardHeight boardWidth cellvals =
        let size = boardHeight * boardWidth in
                assert (length cellvals == size)
                zip [0..size-1] cellvals
