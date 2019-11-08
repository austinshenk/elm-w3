module HtmlAttributesSuite exposing (..)

import Help
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import VirtualDom
import W3.Html as Html
import W3.Html.Attributes as Attributes


test : String -> String -> Html.Attribute a -> String -> Test
test testName attributeName attribute expectedValue =
    Test.test testName
        (\() ->
            Html.node "node" [ attribute ] []
                |> Html.toHtml
                |> Query.fromHtml
                |> Query.has [ Selector.attribute (VirtualDom.attribute attributeName expectedValue) ]
        )


suite : Test
suite =
    describe "Html attributes"
        --Global Attributes
        (Help.stringsUnique test "accesskey" Attributes.accesskey
            ++ Help.value test
                "autocapitalize"
                Attributes.autocapitalize
                [ ( Attributes.off, "off" )
                , ( Attributes.none, "none" )
                , ( Attributes.on, "on" )
                , ( Attributes.sentences, "sentences" )
                , ( Attributes.words, "words" )
                , ( Attributes.characters, "characters" )
                ]
            ++ Help.bool test "autofocus" Attributes.autofocus
            ++ [ Test.test "class is \"testclass\""
                    (\() ->
                        Html.node "node" [ Attributes.class [ "testclass" ] ] []
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.class "testclass" ]
                    )
               ]
            ++ Help.maybeBool test "contenteditable" Attributes.contenteditable ""
            ++ Help.string test "data-test" (Attributes.data_ "test")
            ++ Help.value test
                "dir"
                Attributes.dir
                [ ( Attributes.ltr, "ltr" )
                , ( Attributes.rtl, "rtl" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.maybeBool test "draggable" Attributes.draggable ""
            ++ Help.value test
                "enterkeyhint"
                Attributes.enterkeyhint
                [ ( Attributes.enter, "enter" )
                , ( Attributes.done, "done" )
                , ( Attributes.go, "go" )
                , ( Attributes.next, "next" )
                , ( Attributes.previous, "previous" )
                , ( Attributes.search, "search" )
                , ( Attributes.send, "send" )
                ]
            ++ Help.bool test "hidden" Attributes.hidden
            ++ Help.string test "id" Attributes.id
            ++ Help.value test
                "inputmode"
                Attributes.inputmode
                [ ( Attributes.none, "none" )
                , ( Attributes.text, "text" )
                , ( Attributes.tel, "tel" )
                , ( Attributes.url, "url" )
                , ( Attributes.email, "email" )
                , ( Attributes.numeric, "numeric" )
                , ( Attributes.decimal, "decimal" )
                , ( Attributes.search, "search" )
                ]
            ++ Help.string test "itemid" Attributes.itemid
            ++ Help.stringsUnique test "itemprop" Attributes.itemprop
            ++ Help.stringsUnique test "itemref" Attributes.itemref
            ++ Help.bool test "itemscope" Attributes.itemscope
            ++ Help.stringsUnique test "itemtype" Attributes.itemtype
            ++ Help.string test "lang" Attributes.lang
            ++ Help.number test "nonce" Attributes.nonce
            ++ Help.string test "slot" Attributes.slot
            ++ Help.maybeBool test "spellcheck" Attributes.spellcheck ""
            ++ Help.string test "style" Attributes.style
            ++ Help.number test "tabindex" Attributes.tabindex
            ++ Help.string test "title" Attributes.title
            ++ Help.value test
                "translate"
                Attributes.translate
                [ ( Attributes.yes, "yes" )
                , ( Attributes.no, "no" )
                ]
            -- Attributes
            ++ Help.string test "abbr" Attributes.abbr
            ++ Help.stringsCommaSeparated test "accept" Attributes.accept
            ++ Help.stringsUnique test "acceptcharset" Attributes.acceptcharset
            ++ Help.string test "action" Attributes.action
            ++ Help.string test "allow" Attributes.allow
            ++ Help.bool test "allowfullscreen" Attributes.allowfullscreen
            ++ Help.bool test "allowpaymentrequest" Attributes.allowpaymentrequest
            ++ Help.string test "alt" Attributes.alt
            ++ Help.value test
                "autocomplete"
                Attributes.autocomplete
                [ ( Attributes.on, "on" )
                , ( Attributes.off, "off" )
                ]
            ++ Help.bool test "autoplay" Attributes.autoplay
            ++ Help.bool test "checked" Attributes.checked
            ++ Help.string test "cite" Attributes.cite
            ++ Help.number test "cols" Attributes.cols
            ++ Help.number test "colspan" Attributes.colspan
            ++ Help.bool test "controls" Attributes.controls
            ++ [ test "coords is 0,1,2,3" "coords" (Attributes.coords [ 0, 1, 2, 3 ]) "0,1,2,3" ]
            ++ Help.value test
                "crossorigin"
                Attributes.crossorigin
                [ ( Attributes.anonymous, "anonymous" )
                , ( Attributes.use_credentials, "use-credentials" )
                ]
            ++ Help.string test "data" Attributes.data
            ++ Help.string test "datetime" Attributes.datetime
            ++ Help.value test
                "decoding"
                Attributes.decoding
                [ ( Attributes.sync, "sync" )
                , ( Attributes.async, "async" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.bool test "default" Attributes.default
            ++ Help.string test "dirname" Attributes.dirname
            ++ Help.bool test "disabled" Attributes.disabled
            ++ Help.string test "download" Attributes.download
            ++ Help.value test
                "enctype"
                Attributes.enctype
                [ ( Attributes.form_url_encoded, "application/x-www-form-urlencoded" )
                , ( Attributes.form_data, "multipart/form-data" )
                , ( Attributes.plaintext, "text/plain" )
                ]
            ++ Help.string test "for" Attributes.for
            ++ Help.string test "form" Attributes.form
            ++ Help.string test "formaction" Attributes.formaction
            ++ Help.value test
                "formenctype"
                Attributes.formenctype
                [ ( Attributes.form_url_encoded, "application/x-www-form-urlencoded" )
                , ( Attributes.form_data, "multipart/form-data" )
                , ( Attributes.plaintext, "text/plain" )
                ]
            ++ Help.value test
                "formmethod"
                Attributes.formmethod
                [ ( Attributes.get, "get" )
                , ( Attributes.post, "post" )
                , ( Attributes.dialog, "dialog" )
                ]
            ++ Help.bool test "formnovalidate" Attributes.formnovalidate
            ++ Help.value test
                "formtarget"
                Attributes.formtarget
                [ ( Attributes.blank_, "_blank" )
                , ( Attributes.self_, "_self" )
                , ( Attributes.parent_, "_parent" )
                , ( Attributes.top_, "_top" )
                , ( Attributes.frame "test", "test" )
                ]
            ++ Help.stringsUnique test "headers" Attributes.headers
            ++ Help.number test "height" Attributes.height
            ++ Help.number test "high" Attributes.high
            ++ Help.string test "href" Attributes.href
            ++ Help.string test "hreflang" Attributes.hreflang
            ++ Help.bool test "ismap" Attributes.ismap
            ++ Help.value test
                "kind"
                Attributes.kind
                [ ( Attributes.subtitles, "subtitles" )
                , ( Attributes.captions, "captions" )
                , ( Attributes.description, "description" )
                , ( Attributes.chapters, "chapters" )
                , ( Attributes.metadata, "metadata" )
                ]
            ++ Help.string test "label" Attributes.label
            ++ Help.string test "list" Attributes.list
            ++ Help.bool test "loop" Attributes.loop
            ++ Help.number test "low" Attributes.low
            ++ Help.number test "max" Attributes.max
            ++ Help.number test "maxlength" Attributes.maxlength
            ++ Help.string test "media" Attributes.media
            ++ Help.value test
                "method"
                Attributes.method
                [ ( Attributes.get, "get" )
                , ( Attributes.post, "post" )
                , ( Attributes.dialog, "dialog" )
                ]
            ++ Help.number test "min" Attributes.min
            ++ Help.number test "minlength" Attributes.minlength
            ++ Help.bool test "multiple" Attributes.multiple
            ++ Help.bool test "muted" Attributes.muted
            ++ Help.string test "name" Attributes.name
            ++ Help.bool test "novalidate" Attributes.novalidate
            ++ Help.bool test "open" Attributes.open
            ++ Help.number test "optimum" Attributes.optimum
            ++ Help.string test "pattern" Attributes.pattern
            ++ Help.stringsSpaceSeparated test "ping" Attributes.ping
            ++ Help.string test "placeholder" Attributes.placeholder
            ++ Help.bool test "playsinline" Attributes.playsinline
            ++ Help.string test "poster" Attributes.poster
            ++ Help.value test
                "preload"
                Attributes.preload
                [ ( Attributes.none, "none" )
                , ( Attributes.metadata, "metadata" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.bool test "readonly" Attributes.readonly
            ++ Help.string test "referrerpolicy" Attributes.referrerpolicy
            ++ Help.stringsUnique test "rel" Attributes.rel
            ++ Help.bool test "required" Attributes.required
            ++ Help.bool test "reversed" Attributes.reversed
            ++ Help.number test "rows" Attributes.rows
            ++ Help.number test "rowspan" Attributes.rowspan
            ++ Help.values test
                "sandbox"
                Attributes.sandbox
                [ Attributes.allow_forms
                , Attributes.allow_modals
                , Attributes.allow_orientation_lock
                , Attributes.allow_pointer_lock
                , Attributes.allow_popups
                , Attributes.allow_popups_to_escape_sandbox
                , Attributes.allow_presentation
                , Attributes.allow_same_origin
                , Attributes.allow_scripts
                , Attributes.allow_top_navigation
                , Attributes.allow_top_navigation_by_user_activation
                ]
                " allow-forms allow-modals allow-orientation-lock allow-pointer-lock allow-popups allow-popups-to-escape-sandbox allow-presentation allow-same-origin allow-scripts allow-top-navigation allow-top-navigation-by-user-activation"
            ++ Help.value test
                "scope"
                Attributes.scope
                [ ( Attributes.row, "row" )
                , ( Attributes.col, "col" )
                , ( Attributes.rowgroup, "rowgroup" )
                , ( Attributes.colgroup, "colgroup" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.bool test "selected" Attributes.selected
            ++ Help.value test
                "shape"
                Attributes.shape
                [ ( Attributes.circle, "circle" )
                , ( Attributes.circ, "circ" )
                , ( Attributes.default_, "default" )
                , ( Attributes.poly, "poly" )
                , ( Attributes.polygon, "polygon" )
                , ( Attributes.rect, "rect" )
                , ( Attributes.rectangle, "rectangle" )
                ]
            ++ Help.number test "size" Attributes.size
            ++ Help.stringsSpaceSeparated test "sizes" Attributes.sizes
            ++ Help.number test "span" Attributes.span
            ++ Help.string test "src" Attributes.src
            ++ Help.string test "srcdoc" Attributes.srcdoc
            ++ Help.string test "srclang" Attributes.srclang
            ++ Help.stringsSpaceSeparated test "srcset" Attributes.srcset
            ++ Help.number test "start" Attributes.start
            ++ Help.number test "step" Attributes.step
            ++ Help.value test
                "target"
                Attributes.target
                [ ( Attributes.blank_, "_blank" )
                , ( Attributes.self_, "_self" )
                , ( Attributes.parent_, "_parent" )
                , ( Attributes.top_, "_top" )
                , ( Attributes.frame "test", "test" )
                ]
            ++ Help.value test
                "type"
                Attributes.type_button
                [ ( Attributes.submit, "submit" )
                , ( Attributes.reset, "reset" )
                , ( Attributes.button, "button" )
                ]
            ++ [ test "type for input is \"testValue\"" "type" (Attributes.type_input "testValue") "testValue" ]
            ++ Help.value test
                "type"
                Attributes.type_list
                [ ( Attributes.ordinal, "1" )
                , ( Attributes.loweralpha, "a" )
                , ( Attributes.upperalpha, "A" )
                , ( Attributes.lowerroman, "i" )
                , ( Attributes.upperroman, "I" )
                ]
            ++ [ test "type for mime is \"testValue\"" "type" (Attributes.type_mime "testValue") "testValue" ]
            ++ Help.string test "usemap" Attributes.usemap
            ++ Help.string test "value" Attributes.value
            ++ Help.number test "value" Attributes.value_ordinal
            ++ Help.number test "width" Attributes.width
            ++ Help.value test
                "wrap"
                Attributes.wrap
                [ ( Attributes.soft, "soft" )
                , ( Attributes.hard, "hard" )
                ]
        )