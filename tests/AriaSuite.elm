module AriaSuite exposing (suite)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import VirtualDom
import W3.Aria as Aria
import W3.Aria.Attributes as Attributes
import W3.Html as Html


test : String -> (List (Html.Attribute a msg) -> List (Html.Attribute b msg)) -> Test
test roleName role =
    Test.test ("role: " ++ roleName)
        (\() ->
            Html.node "node" (role []) []
                |> Html.toHtml
                |> Query.fromHtml
                |> Query.has [ Selector.attribute (VirtualDom.attribute "role" roleName) ]
        )


basicRole : List (Aria.GlobalAttributes {}) -> List (Html.GlobalAttributes {} msg) -> List (Html.GlobalAttributes {} msg)
basicRole =
    Aria.role "basic"


suite : Test
suite =
    describe "Aria roles"
        [ test "basic"
            (basicRole
                [ Attributes.atomic True
                , Attributes.busy True
                , Attributes.controls []
                , Attributes.current Attributes.page
                , Attributes.describedby []
                , Attributes.details ""
                , Attributes.disabled True
                , Attributes.dropeffect Attributes.copy
                , Attributes.errormessage ""
                , Attributes.flowto []
                , Attributes.grabbed (Just True)
                , Attributes.haspopup Attributes.menu
                , Attributes.hidden (Just True)
                , Attributes.invalid Attributes.grammar
                , Attributes.keyshortcuts ""
                , Attributes.label ""
                , Attributes.labelledby []
                , Attributes.live Attributes.assertive
                , Attributes.owns []
                , Attributes.relevant [ Attributes.additions ]
                , Attributes.roledescription ""
                ]
            )
        , test "alert" (Aria.alert [ Attributes.expanded (Just True) ])
        , test "alertdialog"
            (Aria.alertdialog
                [ Attributes.expanded (Just True)
                , Attributes.modal True
                ]
            )
        , test "application" (Aria.application [ Attributes.activedescendant "" ])
        , test "article"
            (Aria.article
                [ Attributes.expanded (Just True)
                , Attributes.posinset 0
                , Attributes.setsize 0
                ]
            )
        , test "banner" (Aria.banner [ Attributes.expanded (Just True) ])
        , test "button"
            (Aria.button
                [ Attributes.expanded (Just True)
                , Attributes.pressed Attributes.true
                ]
            )
        , test "cell"
            (Aria.cell
                [ Attributes.expanded (Just True)
                , Attributes.colindex 0
                , Attributes.colspan 0
                , Attributes.rowindex 0
                , Attributes.rowspan 0
                ]
            )
        , test "checkbox"
            (Aria.checkbox
                [ Attributes.checked Attributes.true
                , Attributes.readonly True
                ]
            )
        , test "columnheader"
            (Aria.columnheader
                [ Attributes.colindex 0
                , Attributes.colspan 0
                , Attributes.expanded (Just True)
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.rowindex 0
                , Attributes.rowspan 0
                , Attributes.selected (Just True)
                ]
            )
        , test "combobox"
            (Aria.combobox
                [ Attributes.controls []
                , Attributes.expanded (Just True)
                , Attributes.autocomplete Attributes.inline
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.activedescendant ""
                , Attributes.orientation Attributes.horizontal
                ]
            )
        , test "complementary" (Aria.complementary [ Attributes.expanded (Just True) ])
        , test "contentinfo" (Aria.contentinfo [ Attributes.expanded (Just True) ])
        , test "definition" (Aria.definition [ Attributes.expanded (Just True) ])
        , test "dialog"
            (Aria.dialog
                [ Attributes.expanded (Just True)
                , Attributes.modal True
                ]
            )
        , test "directory" (Aria.directory [ Attributes.expanded (Just True) ])
        , test "document" (Aria.document [ Attributes.expanded (Just True) ])
        , test "feed" (Aria.feed [ Attributes.expanded (Just True) ])
        , test "figure" (Aria.figure [ Attributes.expanded (Just True) ])
        , test "form" (Aria.form [ Attributes.expanded (Just True) ])
        , test "grid"
            (Aria.grid
                [ Attributes.level 0
                , Attributes.multiselectable True
                , Attributes.readonly True
                , Attributes.activedescendant ""
                , Attributes.colcount 0
                , Attributes.expanded (Just True)
                , Attributes.rowcount 0
                ]
            )
        , test "gridcell"
            (Aria.gridcell
                [ Attributes.colindex 0
                , Attributes.colspan 0
                , Attributes.expanded (Just True)
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.rowindex 0
                , Attributes.rowspan 0
                , Attributes.selected (Just True)
                ]
            )
        , test "group"
            (Aria.group
                [ Attributes.expanded (Just True)
                , Attributes.activedescendant ""
                ]
            )
        , test "heading"
            (Aria.heading
                [ Attributes.expanded (Just True)
                , Attributes.level 0
                ]
            )
        , test "img" (Aria.img [ Attributes.expanded (Just True) ])
        , test "link" (Aria.link [ Attributes.expanded (Just True) ])
        , test "list" (Aria.list [ Attributes.expanded (Just True) ])
        , test "listbox"
            (Aria.listbox
                [ Attributes.multiselectable True
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.activedescendant ""
                , Attributes.expanded (Just True)
                , Attributes.orientation Attributes.horizontal
                ]
            )
        , test "listitem"
            (Aria.listitem
                [ Attributes.level 0
                , Attributes.posinset 0
                , Attributes.setsize 0
                ]
            )
        , test "log" (Aria.log [ Attributes.expanded (Just True) ])
        , test "main" (Aria.main_ [ Attributes.expanded (Just True) ])
        , test "marquee" (Aria.marquee [ Attributes.expanded (Just True) ])
        , test "math" (Aria.math [ Attributes.expanded (Just True) ])
        , test "menu"
            (Aria.menu
                [ Attributes.expanded (Just True)
                , Attributes.activedescendant ""
                , Attributes.orientation Attributes.horizontal
                ]
            )
        , test "menubar"
            (Aria.menubar
                [ Attributes.expanded (Just True)
                , Attributes.activedescendant ""
                , Attributes.orientation Attributes.horizontal
                ]
            )
        , test "menuitem"
            (Aria.menuitem
                [ Attributes.posinset 0
                , Attributes.setsize 0
                ]
            )
        , test "menuitemcheckbox"
            (Aria.menuitemcheckbox
                [ Attributes.posinset 0
                , Attributes.checked Attributes.true
                , Attributes.setsize 0
                , Attributes.readonly True
                ]
            )
        , test "menuitemradio"
            (Aria.menuitemradio
                [ Attributes.posinset 0
                , Attributes.checked Attributes.true
                , Attributes.setsize 0
                , Attributes.readonly True
                ]
            )
        , test "navigation" (Aria.navigation [ Attributes.expanded (Just True) ])
        , test "none" (Aria.none [])
        , test "note" (Aria.note [ Attributes.expanded (Just True) ])
        , test "option"
            (Aria.option
                [ Attributes.selected (Just True)
                , Attributes.checked Attributes.true
                , Attributes.posinset 0
                , Attributes.setsize 0
                ]
            )
        , test "presentation" (Aria.presentation [])
        , test "progressbar"
            (Aria.progressbar
                [ Attributes.expanded (Just True)
                , Attributes.valuemax 0
                , Attributes.valuemin 0
                , Attributes.valuenow 0
                , Attributes.valuetext ""
                ]
            )
        , test "radio"
            (Aria.radio
                [ Attributes.posinset 0
                , Attributes.checked Attributes.true
                , Attributes.setsize 0
                ]
            )
        , test "radiogroup"
            (Aria.radiogroup
                [ Attributes.readonly True
                , Attributes.required True
                , Attributes.activedescendant ""
                , Attributes.expanded (Just True)
                , Attributes.orientation Attributes.horizontal
                ]
            )
        , test "region" (Aria.region [ Attributes.expanded (Just True) ])
        , test "row"
            (Aria.row
                [ Attributes.colindex 0
                , Attributes.level 0
                , Attributes.rowindex 0
                , Attributes.selected (Just True)
                , Attributes.activedescendant ""
                , Attributes.expanded (Just True)
                ]
            )
        , test "rowgroup" (Aria.rowgroup [])
        , test "rowheader"
            (Aria.rowheader
                [ Attributes.sort Attributes.ascending
                , Attributes.colindex 0
                , Attributes.colspan 0
                , Attributes.expanded (Just True)
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.rowindex 0
                , Attributes.rowspan 0
                , Attributes.selected (Just True)
                ]
            )
        , test "scrollbar"
            (Aria.scrollbar
                [ Attributes.controls []
                , Attributes.orientation Attributes.horizontal
                , Attributes.valuemax 0
                , Attributes.valuemin 0
                , Attributes.valuenow 0
                , Attributes.valuetext ""
                ]
            )
        , test "search" (Aria.search [ Attributes.expanded (Just True) ])
        , test "searchbox"
            (Aria.searchbox
                [ Attributes.activedescendant ""
                , Attributes.autocomplete Attributes.inline
                , Attributes.multiline True
                , Attributes.placeholder ""
                , Attributes.readonly True
                , Attributes.required True
                ]
            )
        , test "separator"
            (Aria.separator
                [ Attributes.orientation Attributes.horizontal
                , Attributes.valuemax 0
                , Attributes.valuemin 0
                , Attributes.valuenow 0
                , Attributes.valuetext ""
                ]
            )
        , test "slider"
            (Aria.slider
                [ Attributes.orientation Attributes.horizontal
                , Attributes.valuemax 0
                , Attributes.valuemin 0
                , Attributes.valuenow 0
                , Attributes.valuetext ""
                , Attributes.readonly True
                ]
            )
        , test "spinbutton"
            (Aria.spinbutton
                [ Attributes.valuemax 0
                , Attributes.valuemin 0
                , Attributes.valuenow 0
                , Attributes.valuetext ""
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.activedescendant ""
                ]
            )
        , test "status" (Aria.status [ Attributes.expanded (Just True) ])
        , test "switch"
            (Aria.switch
                [ Attributes.checked Attributes.true
                , Attributes.readonly True
                ]
            )
        , test "tab"
            (Aria.tab
                [ Attributes.posinset 0
                , Attributes.selected (Just True)
                , Attributes.setsize 0
                , Attributes.expanded (Just True)
                ]
            )
        , test "table"
            (Aria.table
                [ Attributes.colcount 0
                , Attributes.rowcount 0
                , Attributes.expanded (Just True)
                ]
            )
        , test "tablist"
            (Aria.tablist
                [ Attributes.level 0
                , Attributes.multiselectable True
                , Attributes.orientation Attributes.horizontal
                , Attributes.activedescendant ""
                ]
            )
        , test "tabpanel" (Aria.tabpanel [ Attributes.expanded (Just True) ])
        , test "term" (Aria.term [ Attributes.expanded (Just True) ])
        , test "textbox"
            (Aria.textbox
                [ Attributes.activedescendant ""
                , Attributes.autocomplete Attributes.inline
                , Attributes.multiline True
                , Attributes.placeholder ""
                , Attributes.readonly True
                , Attributes.required True
                ]
            )
        , test "timer" (Aria.timer [ Attributes.expanded (Just True) ])
        , test "toolbar"
            (Aria.toolbar
                [ Attributes.orientation Attributes.horizontal
                , Attributes.activedescendant ""
                , Attributes.expanded (Just True)
                ]
            )
        , test "tooltip" (Aria.tooltip [ Attributes.expanded (Just True) ])
        , test "tree"
            (Aria.tree
                [ Attributes.multiselectable True
                , Attributes.required True
                , Attributes.activedescendant ""
                , Attributes.expanded (Just True)
                , Attributes.orientation Attributes.horizontal
                ]
            )
        , test "treegrid"
            (Aria.treegrid
                [ Attributes.activedescendant ""
                , Attributes.colcount 0
                , Attributes.expanded (Just True)
                , Attributes.level 0
                , Attributes.multiselectable True
                , Attributes.orientation Attributes.horizontal
                , Attributes.readonly True
                , Attributes.required True
                , Attributes.rowcount 0
                ]
            )
        , test "treeitem"
            (Aria.treeitem
                [ Attributes.checked Attributes.true
                , Attributes.expanded (Just True)
                , Attributes.level 0
                , Attributes.posinset 0
                , Attributes.selected (Just True)
                , Attributes.setsize 0
                ]
            )
        , Test.test "custom Attribute is Supported"
            (\() ->
                Html.node "node" (Aria.role "test" [] []) []
                    |> Html.toHtml
                    |> Query.fromHtml
                    |> Query.has [ Selector.attribute (VirtualDom.attribute "role" "test") ]
            )
        ]
