module HtmlAttributesSuite exposing (suite)

import Help
import Json.Encode as Json
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import VirtualDom
import W3.Html as Html
import W3.Html.Attributes as Attributes


test : String -> String -> Html.Attribute a msg -> String -> Test
test testName attributeName attribute expectedValue =
    Test.test testName
        (\() ->
            Html.node "node" [ attribute ] []
                |> Html.toNode
                |> Query.fromHtml
                |> Query.has [ Selector.attribute (VirtualDom.attribute attributeName expectedValue) ]
        )


testProperty : String -> String -> Html.Attribute a msg -> Json.Value -> Test
testProperty testName attributeName attribute expectedValue =
    Test.test testName
        (\() ->
            Html.node "node" [ attribute ] []
                |> Html.toNode
                |> Query.fromHtml
                |> Query.has [ Selector.attribute (VirtualDom.property attributeName expectedValue) ]
        )


suite : Test
suite =
    describe "Html attributes"
        --Global Attributes
        (Help.stringsSpaceSeparatedProperty testProperty "accesskey" Attributes.accesskey
            ++ Help.valueProperty testProperty
                "autocapitalize"
                Attributes.autocapitalize
                [ ( Attributes.off, "off" )
                , ( Attributes.none, "none" )
                , ( Attributes.on, "on" )
                , ( Attributes.sentences, "sentences" )
                , ( Attributes.words, "words" )
                , ( Attributes.characters, "characters" )
                ]
            ++ Help.boolProperty testProperty "autofocus" Attributes.autofocus
            ++ [ Test.test "class is \"testclass\""
                    (\() ->
                        Html.node "node" [ Attributes.class [ "testclass" ] ] []
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.class "testclass" ]
                    )
               ]
            ++ Help.boolProperty testProperty "contentEditable" Attributes.contenteditable
            ++ Help.string test "data-test" (Attributes.data_ "test")
            ++ Help.valueProperty testProperty
                "dir"
                Attributes.dir
                [ ( Attributes.ltr, "ltr" )
                , ( Attributes.rtl, "rtl" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.boolProperty testProperty "draggable" Attributes.draggable
            ++ Help.valueProperty testProperty
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
            ++ Help.boolProperty testProperty "hidden" Attributes.hidden
            ++ Help.stringProperty testProperty "id" Attributes.id
            ++ Help.valueProperty testProperty
                "inputMode"
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
            ++ Help.stringsSpaceSeparated test "itemprop" Attributes.itemprop
            ++ Help.stringsSpaceSeparated test "itemref" Attributes.itemref
            ++ Help.bool test "itemscope" Attributes.itemscope
            ++ Help.stringsSpaceSeparated test "itemtype" Attributes.itemtype
            ++ Help.stringProperty testProperty "lang" Attributes.lang
            ++ Help.stringProperty testProperty "nonce" Attributes.nonce
            ++ Help.stringProperty testProperty "slot" Attributes.slot
            ++ Help.boolProperty testProperty "spellcheck" Attributes.spellcheck
            -- ++ [ testProperty "style is display:none" "style" (Attributes.style "display" "none") (Json.string "display:none") ]
            ++ Help.number test "tabindex" Attributes.tabindex
            ++ Help.stringProperty testProperty "title" Attributes.title
            ++ Help.boolValueProperty testProperty
                "translate"
                Attributes.translate
                "yes"
                "no"
            -- Attributes
            ++ Help.stringProperty testProperty "abbr" Attributes.abbr
            ++ Help.stringsCommaSeparatedProperty testProperty "accept" Attributes.accept
            ++ Help.stringsSpaceSeparatedProperty testProperty "acceptCharset" Attributes.acceptcharset
            ++ Help.stringProperty testProperty "action" Attributes.action
            ++ Help.stringProperty testProperty "allow" Attributes.allow
            ++ Help.boolProperty testProperty "allowFullscreen" Attributes.allowfullscreen
            ++ Help.boolProperty testProperty "allowPaymentRequest" Attributes.allowpaymentrequest
            ++ Help.stringProperty testProperty "alt" Attributes.alt
            ++ Help.boolValueProperty testProperty
                "autocomplete"
                Attributes.autocomplete
                "on"
                "off"
            ++ Help.boolProperty testProperty "autoplay" Attributes.autoplay
            ++ Help.boolProperty testProperty "checked" Attributes.checked
            ++ Help.stringProperty testProperty "cite" Attributes.cite
            ++ Help.numberProperty testProperty "cols" Attributes.cols
            ++ Help.numberProperty testProperty "colspan" Attributes.colspan
            ++ Help.boolProperty testProperty "controls" Attributes.controls
            ++ [ testProperty "coords is 0,1,2,3" "coords" (Attributes.coords [ 0, 1, 2, 3 ]) (Json.string "0,1,2,3") ]
            ++ Help.valueProperty testProperty
                "crossorigin"
                Attributes.crossorigin
                [ ( Attributes.anonymous, "anonymous" )
                , ( Attributes.use_credentials, "use-credentials" )
                ]
            ++ [ testProperty "data-test is value" "data-test" (Attributes.data [ ( "test", "value" ) ]) (Json.string "value") ]
            ++ Help.stringProperty testProperty "datetime" Attributes.datetime
            ++ Help.valueProperty testProperty
                "decoding"
                Attributes.decoding
                [ ( Attributes.sync, "sync" )
                , ( Attributes.async, "async" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.boolProperty testProperty "default" Attributes.default
            ++ Help.stringProperty testProperty "dirname" Attributes.dirname
            ++ Help.boolProperty testProperty "disabled" Attributes.disabled
            ++ Help.stringProperty testProperty "download" Attributes.download
            ++ Help.valueProperty testProperty
                "enctype"
                Attributes.enctype
                [ ( Attributes.form_url_encoded, "application/x-www-form-urlencoded" )
                , ( Attributes.form_data, "multipart/form-data" )
                , ( Attributes.plaintext, "text/plain" )
                ]
            ++ Help.stringProperty testProperty "files" Attributes.files
            ++ Help.string test "for" Attributes.for
            ++ Help.string test "form" Attributes.form
            ++ Help.stringProperty testProperty "formaction" Attributes.formaction
            ++ Help.valueProperty testProperty
                "formenctype"
                Attributes.formenctype
                [ ( Attributes.form_url_encoded, "application/x-www-form-urlencoded" )
                , ( Attributes.form_data, "multipart/form-data" )
                , ( Attributes.plaintext, "text/plain" )
                ]
            ++ Help.valueProperty testProperty
                "formmethod"
                Attributes.formmethod
                [ ( Attributes.get, "get" )
                , ( Attributes.post, "post" )
                , ( Attributes.dialog, "dialog" )
                ]
            ++ Help.boolProperty testProperty "formnovalidate" Attributes.formnovalidate
            ++ Help.valueProperty testProperty
                "formtarget"
                Attributes.formtarget
                [ ( Attributes.blank_, "_blank" )
                , ( Attributes.self_, "_self" )
                , ( Attributes.parent_, "_parent" )
                , ( Attributes.top_, "_top" )
                , ( Attributes.frame "test", "test" )
                ]
            ++ Help.stringsSpaceSeparatedProperty testProperty "headers" Attributes.headers
            ++ Help.numberProperty testProperty "height" Attributes.height
            ++ Help.numberProperty testProperty "high" Attributes.high
            ++ Help.stringProperty testProperty "href" Attributes.href
            ++ Help.stringProperty testProperty "hreflang" Attributes.hreflang
            ++ Help.boolProperty testProperty "ismap" Attributes.ismap
            ++ Help.valueProperty testProperty
                "kind"
                Attributes.kind
                [ ( Attributes.subtitles, "subtitles" )
                , ( Attributes.captions, "captions" )
                , ( Attributes.description, "description" )
                , ( Attributes.chapters, "chapters" )
                , ( Attributes.metadata, "metadata" )
                ]
            ++ Help.stringProperty testProperty "label" Attributes.label
            ++ Help.string test "list" Attributes.list
            ++ Help.boolProperty testProperty "loop" Attributes.loop
            ++ Help.numberProperty testProperty "max" Attributes.max
            ++ Help.numberProperty testProperty "maxlength" Attributes.maxlength
            ++ Help.stringProperty testProperty "media" Attributes.media
            ++ Help.valueProperty testProperty
                "method"
                Attributes.method
                [ ( Attributes.get, "get" )
                , ( Attributes.post, "post" )
                , ( Attributes.dialog, "dialog" )
                ]
            ++ Help.numberProperty testProperty "min" Attributes.min
            ++ Help.numberProperty testProperty "minlength" Attributes.minlength
            ++ Help.boolProperty testProperty "multiple" Attributes.multiple
            ++ Help.boolProperty testProperty "muted" Attributes.muted
            ++ Help.stringProperty testProperty "name" Attributes.name
            ++ Help.boolProperty testProperty "novalidate" Attributes.novalidate
            ++ Help.boolProperty testProperty "open" Attributes.open
            ++ Help.numberProperty testProperty "optimum" Attributes.optimum
            ++ Help.stringProperty testProperty "pattern" Attributes.pattern
            ++ Help.stringsSpaceSeparatedProperty testProperty "ping" Attributes.ping
            ++ Help.stringProperty testProperty "placeholder" Attributes.placeholder
            ++ Help.boolProperty testProperty "playsinline" Attributes.playsinline
            ++ Help.stringProperty testProperty "poster" Attributes.poster
            ++ Help.valueProperty testProperty
                "preload"
                Attributes.preload
                [ ( Attributes.none, "none" )
                , ( Attributes.metadata, "metadata" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.boolProperty testProperty "readonly" Attributes.readonly
            ++ Help.valueProperty testProperty
                "referrerpolicy"
                Attributes.referrerpolicy
                [ ( Attributes.no_referrer, "no-referrer" )
                , ( Attributes.no_referrer_when_downgrade, "no-referrer-when-downgrade" )
                , ( Attributes.same_origin, "same-origin" )
                , ( Attributes.origin, "origin" )
                , ( Attributes.strict_origin, "strict-origin" )
                , ( Attributes.origin_when_cross_origin, "origin-when-cross-origin" )
                , ( Attributes.strict_origin_when_cross_origin, "strict-origin-when-cross-origin" )
                , ( Attributes.unsafe_url, "unsafe-url" )
                ]
            ++ Help.valuesProperty testProperty
                "rel"
                Attributes.rel
                [ Attributes.alternate
                , Attributes.canonical
                , Attributes.author
                , Attributes.bookmark
                , Attributes.dns_prefetch
                , Attributes.external
                , Attributes.help
                , Attributes.icon
                , Attributes.modulepreload
                , Attributes.license
                , Attributes.next
                , Attributes.nofollow
                , Attributes.noopener
                , Attributes.noreferrer
                , Attributes.opener
                , Attributes.pingback
                , Attributes.prefetch
                , Attributes.preload_rel
                , Attributes.prerender
                , Attributes.prev
                , Attributes.search
                , Attributes.stylesheet
                , Attributes.tag
                ]
                " alternate canonical author bookmark dns-prefetch external help icon modulepreload license next nofollow noopener noreferrer opener pingback prefetch preload prerender prev search stylesheet tag"
            ++ Help.boolProperty testProperty "required" Attributes.required
            ++ Help.boolProperty testProperty "reversed" Attributes.reversed
            ++ Help.numberProperty testProperty "rows" Attributes.rows
            ++ Help.numberProperty testProperty "rowspan" Attributes.rowspan
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
            ++ Help.valueProperty testProperty
                "scope"
                Attributes.scope
                [ ( Attributes.row, "row" )
                , ( Attributes.col, "col" )
                , ( Attributes.rowgroup, "rowgroup" )
                , ( Attributes.colgroup, "colgroup" )
                , ( Attributes.auto, "auto" )
                ]
            ++ Help.boolProperty testProperty "selected" Attributes.selected
            ++ Help.valueProperty testProperty
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
            ++ Help.numberProperty testProperty "size" Attributes.size
            ++ Help.stringsSpaceSeparatedProperty testProperty "sizes" Attributes.sizes
            ++ Help.numberProperty testProperty "span" Attributes.span
            ++ Help.stringProperty testProperty "src" Attributes.src
            ++ Help.stringProperty testProperty "srcdoc" Attributes.srcdoc
            ++ Help.stringProperty testProperty "srclang" Attributes.srclang
            ++ Help.stringsSpaceSeparatedProperty testProperty "srcset" Attributes.srcset
            ++ Help.numberProperty testProperty "start" Attributes.start
            ++ Help.numberProperty testProperty "step" Attributes.step
            ++ Help.valueProperty testProperty
                "target"
                Attributes.target
                [ ( Attributes.blank_, "_blank" )
                , ( Attributes.self_, "_self" )
                , ( Attributes.parent_, "_parent" )
                , ( Attributes.top_, "_top" )
                , ( Attributes.frame "test", "test" )
                ]
            ++ Help.valueProperty testProperty
                "type"
                Attributes.type_button
                [ ( Attributes.submit, "submit" )
                , ( Attributes.reset, "reset" )
                , ( Attributes.button, "button" )
                ]
            ++ [ testProperty "type for input is \"testValue\"" "type" (Attributes.type_input "testValue") (Json.string "testValue") ]
            ++ Help.valueProperty testProperty
                "type"
                Attributes.type_list
                [ ( Attributes.ordinal, "1" )
                , ( Attributes.loweralpha, "a" )
                , ( Attributes.upperalpha, "A" )
                , ( Attributes.lowerroman, "i" )
                , ( Attributes.upperroman, "I" )
                ]
            ++ [ testProperty "type for mime is \"testValue\"" "type" (Attributes.type_mime "testValue") (Json.string "testValue") ]
            ++ Help.stringProperty testProperty "usemap" Attributes.usemap
            ++ Help.stringProperty testProperty "value" Attributes.value
            ++ Help.numberProperty testProperty "value" Attributes.value_ordinal
            ++ Help.numberProperty testProperty "width" Attributes.width
            ++ Help.valueProperty testProperty
                "wrap"
                Attributes.wrap
                [ ( Attributes.soft, "soft" )
                , ( Attributes.hard, "hard" )
                ]
            ++ [ Test.test "custom Attribute is supported"
                    (\() ->
                        Html.node "node" [ Attributes.attribute "test" "test" ] []
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (VirtualDom.attribute "test" "test") ]
                    )
               ]
            ++ [ Test.test "custom Property is supported"
                    (\() ->
                        Html.node "node" [ Attributes.property "test" (Json.string "test") ] []
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.attribute (VirtualDom.attribute "test" "test") ]
                    )
               ]
        )
