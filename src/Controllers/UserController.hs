module UserController
  ( index
  , show
  ) where

import Models.User (users)

-- matchesId :: Int -> User -> Bool
-- matchesId id User = userId User == id

index = users

show = 4
