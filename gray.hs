gray :: Integer -> [String]
gray 1 = ["0", "1"]
gray n
    | n < 1 = error "argument to gray should be an integer >= 1"
    | otherwise = zeroAdded ++ oneAdded
        where zeroAdded = map ("0" ++) recurse
              oneAdded = map ("1" ++) $ reverse recurse
              recurse = gray $ n - 1