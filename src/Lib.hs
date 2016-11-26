module Lib
    ( maximum'
    ) where

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Trying to take the maximum of an empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)
