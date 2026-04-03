-- Функція для імітації процесу тестування
-- Приймає список тестів (кожен тест - функція, що повертає Bool)
-- Повертає кількість пройдених та провалених тестів
simulateTesting :: [IO Bool] -> IO (Int, Int)
simulateTesting tests = do
    results <- mapM id tests
    let passes = length $ filter id results
        fails = length results - passes
    putStrLn $ "Тестування завершено: " ++ show passes ++ " пройдених, " ++ show fails ++ " провалених."
    return (passes, fails)

-- Приклад використання:
-- test1 = return True  -- Пройдений тест
-- test2 = return False -- Провалений тест
-- main = simulateTesting [test1, test2]