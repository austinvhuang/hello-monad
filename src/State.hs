import Control.Monad.State

addOne :: State Int String
addOne = do
  x <- get
  let x' = x + 1
  put x'
  pure . show $ x'

doCalc :: State Int String
doCalc = do
  addOne
  addOne
  addOne

main :: IO ()
main = do
  let (stringVal, intVal) = runState doCalc 0
  print stringVal -- prints "3"
  print intVal -- prints 3
