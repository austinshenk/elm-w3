module Wai.Table.Column exposing (Settings, settings, columnIndex, sort)

{-| Column settings for Wai.Table module


# Column

@docs Settings, settings, columnIndex, sort

-}

import Wai.Token.Sort as Sort


{-| -}
settings : String -> Settings
settings label =
    { label = label, columnIndex = Nothing, sort = Nothing }


{-| -}
columnIndex : Int -> Settings -> Settings
columnIndex value columnSettings =
    { columnSettings | columnIndex = Just value }


{-| -}
sort : Sort.Type -> Settings -> Settings
sort value columnSettings =
    { columnSettings | sort = Just value }


{-| -}
type alias Settings =
    { label : String
    , columnIndex : Maybe Int
    , sort : Maybe Sort.Type
    }
