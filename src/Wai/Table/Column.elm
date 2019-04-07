module Wai.Table.Column exposing (Settings, columnIndex, settings, sort)

import Wai.Token.Sort as Sort


settings : String -> Settings
settings label =
    { label = label, columnIndex = Nothing, sort = Nothing }


columnIndex : Int -> Settings -> Settings
columnIndex value columnSettings =
    { columnSettings | columnIndex = Just value }


sort : Sort.Type -> Settings -> Settings
sort value columnSettings =
    { columnSettings | sort = Just value }


type alias Settings =
    { label : String
    , columnIndex : Maybe Int
    , sort : Maybe Sort.Type
    }
