-- Thirteenth

safeDiv :: Int -> Int -> Maybe Int
safeDiv a 0 = Nothing
safeDiv a b = Just (a `div` b)

safeStringHead :: String -> Maybe Char
safeStringHead []    = Nothing
safeStringHead (x:_) = Just x

-- T :: Int -> Int -> Time
data Time = T Int Int
    deriving (Show, Eq)

time :: Int -> Int -> Maybe Time
time h m
    | h >= 0 && h < 24 && m >= 0 && m < 60 = Just (T h m)
    | otherwise                            = Nothing


data USTime = UT ("AM" | "PM") Int Int
    deriving (Show, Eq)
