import Data.Char

main = do
  s <- getLine
  putStrLn(solve s)

solve :: String -> String
solve s
  | hasMoreUpper s = map toUpper s
  | otherwise = map toLower s

hasMoreUpper :: String -> Bool
hasMoreUpper s = if countUpper s * 2 > len then True else False
  where len = length s
        numUpper = countUpper s

countUpper :: String -> Int
countUpper s = sum(map(\c -> if isUpper c then 1 else 0) s)