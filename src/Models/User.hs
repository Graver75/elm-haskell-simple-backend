{-# LANGUAGE DeriveGeneric #-}

module Models.User
  ( matchesId
  , users
  ) where

import GHC.Generics
import Data.Aeson (FromJSON, ToJSON)

data User = User { userId :: Int, name :: String, username :: String } deriving (Show, Generic)
instance ToJSON User
instance FromJSON User

matchesId :: Int -> User -> Bool
matchesId id user = userId user == id

user1 :: User
user1 = User { userId = 1, name = "User 1", username = "user_1" }

user2 :: User
user2 = User { userId = 2, name = "User 2", username = "user_2" }

users :: [User]
users = [user1, user2]
