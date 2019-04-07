module Table exposing
    ( column
    , data
    , header
    , row
    , settings
    , table
    )

import Html exposing (Attribute, Html)
import Html.Attributes
import Label.Help
import Label.Type exposing (Label)
import Wai.Aria as Aria
import Wai.IdReference exposing (IdReference)
import Wai.Table.Column as Column
import Wai.Table.Data as Data
import Wai.Table.Header as Header
import Wai.Table.Row as Row



{- WAI Table
   https://www.w3.org/TR/wai-aria-practices-1.1/#table
   https://www.w3.org/TR/wai-aria-practices-1.1/#gridAndTableProperties
-}


table : Settings -> List (Attribute a) -> List (Header a) -> List (Row a) -> Html a
table tableSettings attributes headers rows =
    let
        labelledAttributes =
            Label.Help.apply tableSettings.label ( attributes, [] )

        tattributes =
            Aria.colCount tableSettings.columnCount :: Aria.rowCount tableSettings.rowCount :: optionalAttribute Aria.describedBy tableSettings.describedBy :: Tuple.first labelledAttributes

        thead =
            Html.thead [] (List.map headerToHtml headers)

        tbody =
            Html.tbody [] (List.map rowToHtml rows)
    in
    Html.table tattributes [ thead, tbody ]


type alias Settings =
    { label : Label
    , rowCount : Int
    , columnCount : Int
    , describedBy : Maybe (List IdReference)
    }


settings : Label -> Int -> Int -> Settings
settings label rowCount columnCount =
    { label = label
    , rowCount = rowCount
    , columnCount = columnCount
    , describedBy = Nothing
    }


describedBy : List IdReference -> Settings -> Settings
describedBy ids tableSettings =
    { tableSettings | describedBy = Just ids }


type Header a
    = Header Header.Settings (List (Attribute a)) (List (Column a))


header : Header.Settings -> List (Attribute a) -> List (Column a) -> Header a
header =
    Header


type Column a
    = Column Column.Settings (List (Attribute a)) (List (Html a))


column : Column.Settings -> List (Attribute a) -> List (Html a) -> Column a
column =
    Column


type Row a
    = Row Row.Settings (List (Attribute a)) (List (Data a))


row : Row.Settings -> List (Attribute a) -> List (Data a) -> Row a
row =
    Row


type Data a
    = Data Data.Settings (List (Attribute a)) (List (Html a))


data : Data.Settings -> List (Attribute a) -> List (Html a) -> Data a
data =
    Data


headerToHtml : Header a -> Html a
headerToHtml (Header { columnIndex } attributes columns) =
    Html.tr (optionalAttribute Aria.colIndex columnIndex :: attributes) (List.map columnToTH columns)


columnToTH : Column a -> Html a
columnToTH (Column { columnIndex, sort, label } attributes body) =
    Html.th (optionalAttribute Aria.colIndex columnIndex :: optionalAttribute Aria.sort sort :: attributes) (Html.text label :: body)


rowToHtml : Row a -> Html a
rowToHtml (Row { rowIndex, columnIndex } attributes datas) =
    Html.tr (Aria.rowIndex rowIndex :: optionalAttribute Aria.colIndex columnIndex :: attributes) (List.map dataToTD datas)


dataToTD : Data a -> Html a
dataToTD (Data { columnIndex, columnSpan, rowSpan } attributes body) =
    Html.td (optionalAttribute Aria.colIndex columnIndex :: optionalAttribute Aria.colSpan columnSpan :: optionalAttribute Aria.rowSpan rowSpan :: attributes) body


optionalAttribute : (a -> Attribute b) -> Maybe a -> Attribute b
optionalAttribute attribute optionalValue =
    case optionalValue of
        Just value ->
            attribute value

        Nothing ->
            Html.Attributes.attribute "" ""
