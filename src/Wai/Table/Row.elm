module Wai.Table.Row exposing (Settings, settings, columnIndex)

{-| Row settings for Wai.Table module


# Row

@docs Settings, settings, columnIndex

-}


{-| -}
settings : Int -> Settings
settings rowIndex =
    { rowIndex = rowIndex, columnIndex = Nothing }


{-| -}
columnIndex : Int -> Settings -> Settings
columnIndex value rowSettings =
    { rowSettings | columnIndex = Just value }


type alias Settings =
    { rowIndex : Int
    , columnIndex : Maybe Int
    }
