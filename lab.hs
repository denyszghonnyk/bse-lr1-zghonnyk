-- Simple testing framework in Haskell

test :: String -> Bool -> IO ()
test name result = 
    if result 
        then putStrLn $ "✓ " ++ name
        else putStrLn $ "✗ " ++ name

-- Example functions to test
add :: Int -> Int -> Int
add x y = x + y

multiply :: Int -> Int -> Int
multiply x y = x * y

-- Run tests
main :: IO ()
main = do
    test "add 2 3 == 5" (add 2 3 == 5)
    test "add 0 0 == 0" (add 0 0 == 0)
    test "multiply 3 4 == 12" (multiply 3 4 == 12)
    test "multiply 5 0 == 0" (multiply 5 0 == 0)