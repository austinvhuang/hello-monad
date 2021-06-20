import Control.Monad.State

addTwo :: State Int String
addTwo = do
  x <- get
  put $ x + 2
  pure $ show $ x + 2

addOne :: State Int String
addOne = do
  x <- get
  put $ x + 1
  pure $ show $ x + 1

doCalc :: State Int String
doCalc = do
  addTwo
  addTwo 
  addOne

main :: IO ()
main = do
  let (stringVal, intVal) = runState doCalc 0
  print stringVal
  print intVal
  pure ()
