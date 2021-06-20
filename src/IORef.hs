import Data.IORef

incrementBy :: Int -> IORef Int -> IO ()
incrementBy increment x = modifyIORef x (\y -> y + increment) 

main :: IO ()
main = do

  x <- newIORef 0
  incrementBy 1 x
  x' <- readIORef x
  print x' -- prints 1

  incrementBy 2 x
  x'' <- readIORef x
  print x'' -- prints 3
