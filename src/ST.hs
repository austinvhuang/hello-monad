{-# LANGUAGE RankNTypes #-}

import Data.STRef
import Control.Monad.ST

stInit :: ST s (STRef s Int)
stInit = do
  x <- newSTRef (0 :: Int)
  modifySTRef x (\y -> y + 1)
  pure x

stUpdate :: STRef s Int -> ST s Int
stUpdate x = do
  modifySTRef x (\y -> y + 2)
  readSTRef x

pureFunction :: Int
pureFunction = runST $ do
  x <- stInit
  stUpdate x

main = do
  let x = pureFunction
  print x -- prints 3
