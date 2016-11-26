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

mckay :: User
mckay = User { userId = 1, name = "McKay Broderick", username = "mckayb" }

maddie :: User
maddie = User { userId = 2, name = "Madisen Gilbert", username = "maddiepattie" }

users :: [User]
users = [mckay, maddie]
