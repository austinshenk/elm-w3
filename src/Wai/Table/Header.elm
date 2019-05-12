module Wai.Table.Header exposing (Settings, settings, columnIndex)

{-| Header settings for Wai.Table module


# Header

@docs Settings, settings, columnIndex

-}


{-| -}
settings : Int -> Settings
settings rowIndex =
    { rowIndex = rowIndex, columnIndex = Nothing }


{-| -}
columnIndex : Int -> Settings -> Settings
columnIndex value headerSettings =
    { headerSettings | columnIndex = Just value }


{-| -}
type alias Settings =
    { rowIndex : Int
    , columnIndex : Maybe Int
    }
