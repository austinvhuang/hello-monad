import Data.IORef

addOne :: IORef Int -> IO ()
addOne x = modifyIORef x (\y -> y + 1) 

main = do
  x <- newIORef 0
  addOne x
  addOne x
  addOne x
  x' <- readIORef x
  print x' -- prints 3
