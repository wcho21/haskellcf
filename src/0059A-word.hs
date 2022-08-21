import Data.Char

main = do
  s <- getLine
  putStrLn(solve s)

solve :: String -> String
solve s = map (if hasMoreUpper s then toUpper else toLower) s

hasMoreUpper :: String -> Bool
hasMoreUpper s = if countUpper s * 2 > len then True else False
  where len = length s
        numUpper = countUpper s

countUpper :: String -> Int
countUpper s = sum $ map(\c -> if isUpper c then 1 else 0) s