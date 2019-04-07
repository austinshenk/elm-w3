module Wai.Table.Data exposing (Settings, columnIndex, columnSpan, rowSpan, settings)


settings : Settings
settings =
    { columnIndex = Nothing, rowSpan = Nothing, columnSpan = Nothing }


columnIndex : Int -> Settings -> Settings
columnIndex value dataSettings =
    { dataSettings | columnIndex = Just value }


rowSpan : Int -> Settings -> Settings
rowSpan value dataSettings =
    { dataSettings | rowSpan = Just value }


columnSpan : Int -> Settings -> Settings
columnSpan value dataSettings =
    { dataSettings | columnSpan = Just value }


type alias Settings =
    { columnIndex : Maybe Int
    , rowSpan : Maybe Int
    , columnSpan : Maybe Int
    }
