{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Server
  ( start
  ) where

import Web.Scotty
import Data.Monoid (mconcat)
import Lib (maximum')
import Models.User (matchesId, users)
import Data.Aeson (encode)

routes = do
  get "/scotty/:word" $ do
    beam <- param "word"
    html $ mconcat ["<h1>Scotty, ", beam, " me up!</h1>"]

  get "/users" $ do
    json users

  get "/users/:id" $ do
    id <- param "id"
    json (filter (matchesId id) users)

start :: IO()
start = scotty 3000 routes
