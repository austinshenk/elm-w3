module Wai.Table.Header exposing (Settings, columnIndex, settings)


settings : Int -> Settings
settings rowIndex =
    { rowIndex = rowIndex, columnIndex = Nothing }


columnIndex : Int -> Settings -> Settings
columnIndex value headerSettings =
    { headerSettings | columnIndex = Just value }


type alias Settings =
    { rowIndex : Int
    , columnIndex : Maybe Int
    }
