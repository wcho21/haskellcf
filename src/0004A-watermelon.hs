main = do
  input <- getLine
  let w = read input :: Integer
  let ans = if w > 2 && even w then "YES" else "NO"
  putStrLn(ans)