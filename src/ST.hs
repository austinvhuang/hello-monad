{-# LANGUAGE RankNTypes #-}

import Data.STRef
import Control.Monad.ST

stTest :: ST s Int
stTest = do
  x <- newSTRef (0 :: Int)
  modifySTRef x (\y -> y + 1)
  readSTRef x

main = do
  let x = runST stTest :: Int
  print x -- prints 1
