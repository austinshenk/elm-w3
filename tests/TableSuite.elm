module TableSuite exposing (suite)

import Expect
import Html
import Html.Attributes as Attribute
import Label
import Table exposing (..)
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import Wai.Aria as Aria
import Wai.Table.Column as Column exposing (..)
import Wai.Table.Data as Data exposing (..)
import Wai.Table.Header as Header exposing (..)
import Wai.Table.Row as Row exposing (..)


suite : Test
suite =
    let
        blankTable =
            Table.table (Table.settings Label.custom 0 0)
                []
                []
                []

        tableWithOneColumn =
            Table.table (Table.settings Label.custom 1 1)
                []
                [ Table.header (Header.settings 1 |> Header.columnIndex 1)
                    []
                    [ Table.column (Column.settings "label") [] [] ]
                ]
                [ Table.row (Row.settings 2 |> Row.columnIndex 1)
                    []
                    [ Table.data Data.settings [] [ Html.text "something" ]
                    ]
                ]

        tableWithThreeColumns =
            Table.table (Table.settings Label.custom 1 3)
                []
                [ Table.header (Header.settings 1 |> Header.columnIndex 1)
                    []
                    [ Table.column (Column.settings "label") [] []
                    , Table.column (Column.settings "label") [] []
                    , Table.column (Column.settings "label") [] []
                    ]
                ]
                [ Table.row (Row.settings 2 |> Row.columnIndex 1)
                    []
                    [ Table.data Data.settings [] [ Html.text "something" ]
                    , Table.data Data.settings [] [ Html.text "something" ]
                    , Table.data Data.settings [] [ Html.text "something" ]
                    ]
                ]

        tableWithContiguousHeadingsAndFirstHeadingHidden =
            Table.table (Table.settings Label.custom 1 5)
                []
                [ Table.header (Header.settings 1 |> Header.columnIndex 3)
                    []
                    [ Table.column (Column.settings "label") [] []
                    , Table.column (Column.settings "label") [] []
                    , Table.column (Column.settings "label") [] []
                    ]
                ]
                [ Table.row (Row.settings 2 |> Row.columnIndex 3)
                    []
                    [ Table.data Data.settings [] [ Html.text "something" ]
                    , Table.data Data.settings [] [ Html.text "something" ]
                    , Table.data Data.settings [] [ Html.text "something" ]
                    ]
                ]

        tableWithNonContiguousHeadings =
            Table.table (Table.settings Label.custom 1 5)
                []
                [ Table.header (Header.settings 1)
                    []
                    [ Table.column (Column.settings "label" |> Column.columnIndex 1) [] []
                    , Table.column (Column.settings "label" |> Column.columnIndex 3) [] []
                    , Table.column (Column.settings "label" |> Column.columnIndex 5) [] []
                    ]
                ]
                [ Table.row (Row.settings 2 |> Row.columnIndex 1)
                    []
                    [ Table.data Data.settings [] [ Html.text "something" ]
                    , Table.data Data.settings [] [ Html.text "something" ]
                    , Table.data Data.settings [] [ Html.text "something" ]
                    ]
                ]

        tableWithNonContiguousHeadingsAndNoData =
            Table.table (Table.settings Label.custom 1 5)
                []
                [ Table.header (Header.settings 1)
                    []
                    []
                ]
                [ Table.row (Row.settings 2 |> Row.columnIndex 1)
                    []
                    []
                ]
    in
    describe "Table"
        [ describe "element"
            [ test "is table"
                (\() ->
                    blankTable
                        |> Query.fromHtml
                        |> Query.has [ Selector.tag "table" ]
                )
            , test "has thead"
                (\() ->
                    blankTable
                        |> Query.fromHtml
                        |> Query.children [ Selector.tag "thead" ]
                        |> Query.count (Expect.equal 1)
                )
            , test "has tbody"
                (\() ->
                    blankTable
                        |> Query.fromHtml
                        |> Query.children [ Selector.tag "tbody" ]
                        |> Query.count (Expect.equal 1)
                )
            ]
        , describe "heading"
            [ test "is empty when no headings are provided"
                (\() ->
                    blankTable
                        |> Query.fromHtml
                        |> Query.findAll [ Selector.tag "th" ]
                        |> Query.count (Expect.equal 0)
                )
            , test "has one child when only one heading is provided"
                (\() ->
                    tableWithOneColumn
                        |> Query.fromHtml
                        |> Query.findAll [ Selector.tag "th" ]
                        |> Query.count (Expect.equal 1)
                )
            , test "has some children when some headings are provided"
                (\() ->
                    tableWithThreeColumns
                        |> Query.fromHtml
                        |> Query.findAll [ Selector.tag "th" ]
                        |> Query.count (Expect.equal 3)
                )
            ]
        , describe "colindex on tr"
            [ test "is 1 when no hidden headings are at the beginning of the list and is contiguous"
                (\() ->
                    tableWithOneColumn
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "thead" ]
                        |> Query.find [ Selector.tag "tr" ]
                        |> Query.has [ Selector.attribute (Aria.colIndex 1) ]
                )
            , test "is 3 when 2 hidden headings are at the beginning of the list and is contiguous"
                (\() ->
                    tableWithContiguousHeadingsAndFirstHeadingHidden
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "thead" ]
                        |> Query.find [ Selector.tag "tr" ]
                        |> Query.has [ Selector.attribute (Aria.colIndex 3) ]
                )
            , test "is not added for a non contiguous heading list"
                (\() ->
                    tableWithNonContiguousHeadingsAndNoData
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "thead" ]
                        |> Query.find [ Selector.tag "tr" ]
                        |> Query.hasNot [ Selector.attribute (Aria.colIndex 1) ]
                )
            ]
        , describe "colindex on th"
            [ test "is 1 when the first heading is visible and headings are not contiguous"
                (\() ->
                    tableWithNonContiguousHeadings
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "thead" ]
                        |> Query.find [ Selector.tag "tr" ]
                        |> Query.findAll [ Selector.tag "th" ]
                        |> Query.index 0
                        |> Query.has [ Selector.attribute (Aria.colIndex 1) ]
                )
            , test "is 3 when the third heading is visible and headings are not contiguous"
                (\() ->
                    tableWithNonContiguousHeadings
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "thead" ]
                        |> Query.find [ Selector.tag "tr" ]
                        |> Query.findAll [ Selector.tag "th" ]
                        |> Query.index 1
                        |> Query.has [ Selector.attribute (Aria.colIndex 3) ]
                )
            , test "is 5 when the fifth heading is visible and headings are not contiguous"
                (\() ->
                    tableWithNonContiguousHeadings
                        |> Query.fromHtml
                        |> Query.find [ Selector.tag "thead" ]
                        |> Query.find [ Selector.tag "tr" ]
                        |> Query.findAll [ Selector.tag "th" ]
                        |> Query.index 2
                        |> Query.has [ Selector.attribute (Aria.colIndex 5) ]
                )
            ]
        ]
