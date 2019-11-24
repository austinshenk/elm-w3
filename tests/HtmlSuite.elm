module HtmlSuite exposing (..)

import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import W3.Html as Html
import W3.Html.Attributes as Attributes


flowNode : List (Html.Attribute a) -> List (Html.Node Html.FlowContent msg) -> Html.Node b msg
flowNode =
    Html.node "node"


headingNode : List (Html.Attribute a) -> List (Html.Node Html.HeadingContent msg) -> Html.Node b msg
headingNode =
    Html.node "node"


sectioningNode : List (Html.Attribute a) -> List (Html.Node Html.SectioningContent msg) -> Html.Node b msg
sectioningNode =
    Html.node "node"


phrasingNode : List (Html.Attribute a) -> List (Html.Node Html.PhrasingContent msg) -> Html.Node b msg
phrasingNode =
    Html.node "node"


embeddedNode : List (Html.Attribute a) -> List (Html.Node Html.EmbeddedContent msg) -> Html.Node b msg
embeddedNode =
    Html.node "node"


interactiveNode : List (Html.Attribute a) -> List (Html.Node Html.InteractiveContent msg) -> Html.Node b msg
interactiveNode =
    Html.node "node"


globalAttributesNode : List (Html.GlobalAttributes {}) -> Html.Node b msg
globalAttributesNode attributes =
    Html.node "node" attributes []


test : String -> Html.Node b msg -> List Test
test name node =
    [ Test.test ("element: " ++ name)
        (\() ->
            node
                |> Html.toHtml
                |> Query.fromHtml
                |> Query.has [ Selector.tag name ]
        )
    ]


numbered : String -> Int -> Html.Node b msg -> List Test
numbered name index node =
    [ Test.test ("element: " ++ name ++ " variation " ++ String.fromInt index)
        (\() ->
            node
                |> Html.toHtml
                |> Query.fromHtml
                |> Query.has [ Selector.tag name ]
        )
    ]


supports : String -> Html.Node b msg -> List Test
supports testName node =
    [ Test.test testName
        (\() ->
            node
                |> Html.toHtml
                |> Query.fromHtml
                |> Query.has [ Selector.tag "node" ]
        )
    ]


suite : Test
suite =
    describe "Html elements"
        (supports
            "FlowContent"
            (flowNode []
                [ Html.node "test" [] []
                , Html.address [] []
                , Html.blockquote [] []
                , Html.dialog [] []
                , Html.div [] []
                , Html.dl [] []
                , Html.dlWrapped [] []
                , Html.fieldset [] ( [], [] ) []
                , Html.figureNoCaption [] []
                , Html.figure [] (Html.figcaption [] []) []
                , Html.figureEndingCaption [] [] (Html.figcaption [] [])
                , Html.footer [] []
                , Html.form [] []
                , Html.header [] []
                , Html.hr []
                , Html.main_ [] []
                , Html.menu [] []
                , Html.ol [] []
                , Html.p [] []
                , Html.pre [] []
                , Html.table [] |> Html.tbody [] []
                , Html.ul [] []
                , Html.abbr [] []
                , Html.area []
                , Html.b [] []
                , Html.bdi [] []
                , Html.bdo [] []
                , Html.br []
                , Html.cite [] []
                , Html.code [] []
                , Html.data [] []
                , Html.datalistText [] []
                , Html.datalist [] []
                , Html.del [] []
                , Html.dfn [] []
                , Html.em [] []
                , Html.i [] []
                , Html.ins [] []
                , Html.kbd [] []
                , Html.map [] []
                , Html.mark [] []
                , Html.meter [] []
                , Html.output [] []
                , Html.progress [] []
                , Html.q [] []
                , Html.ruby [] [] []
                , Html.rubyWrapper [] (Html.rubyDescendent [] []) []
                , Html.s [] []
                , Html.samp [] []
                , Html.small [] []
                , Html.span [] []
                , Html.strong [] []
                , Html.sub [] []
                , Html.sup [] []
                , Html.time [] []
                , Html.u [] []
                , Html.var [] []
                , Html.wbr []
                , Html.h1 [] []
                , Html.h2 [] []
                , Html.h3 [] []
                , Html.h4 [] []
                , Html.h5 [] []
                , Html.h6 [] []
                , Html.hgroup [] []
                , Html.article [] []
                , Html.aside [] []
                , Html.nav [] []
                , Html.section [] []
                , Html.canvas []
                , Html.picture [] [] (Html.img [])
                , Html.a [] []
                , Html.audio [] [] [] []
                , Html.button [] []
                , Html.details [] (Html.summary [] []) []
                , Html.embed []
                , Html.iframe []
                , Html.img []
                , Html.input []
                , Html.label [] []
                , Html.object [] [] []
                , Html.select [] []
                , Html.textarea [] ""
                , Html.video [] [] [] []
                ]
            )
            ++ supports "HeadingContent"
                (headingNode []
                    [ Html.h1 [] []
                    , Html.h2 [] []
                    , Html.h3 [] []
                    , Html.h4 [] []
                    , Html.h5 [] []
                    , Html.h6 [] []
                    , Html.hgroup [] []
                    ]
                )
            ++ supports "SectioningContent"
                (sectioningNode []
                    [ Html.article [] []
                    , Html.aside [] []
                    , Html.nav [] []
                    , Html.section [] []
                    ]
                )
            ++ supports "PhrasingContent"
                (phrasingNode []
                    [ Html.a [] []
                    , Html.abbr [] []
                    , Html.area []
                    , Html.audio [] [] [] []
                    , Html.b [] []
                    , Html.bdi [] []
                    , Html.bdo [] []
                    , Html.br []
                    , Html.button [] []
                    , Html.canvas []
                    , Html.cite [] []
                    , Html.code [] []
                    , Html.data [] []
                    , Html.datalistText [] []
                    , Html.datalist [] []
                    , Html.del [] []
                    , Html.dfn [] []
                    , Html.em [] []
                    , Html.embed []
                    , Html.i [] []
                    , Html.iframe []
                    , Html.img []
                    , Html.input []
                    , Html.ins [] []
                    , Html.kbd [] []
                    , Html.label [] []
                    , Html.map [] []
                    , Html.mark [] []
                    , Html.meter [] []
                    , Html.object [] [] []
                    , Html.output [] []
                    , Html.picture [] [] (Html.img [])
                    , Html.progress [] []
                    , Html.q [] []
                    , Html.ruby [] [] []
                    , Html.rubyWrapper [] (Html.rubyDescendent [] []) []
                    , Html.s [] []
                    , Html.samp [] []
                    , Html.select [] []
                    , Html.small [] []
                    , Html.span [] []
                    , Html.strong [] []
                    , Html.sub [] []
                    , Html.sup [] []
                    , Html.textarea [] ""
                    , Html.time [] []
                    , Html.u [] []
                    , Html.var [] []
                    , Html.video [] [] [] []
                    , Html.wbr []
                    ]
                )
            ++ supports "EmbeddedContent"
                (embeddedNode []
                    [ Html.audio [] [] [] []
                    , Html.canvas []
                    , Html.embed []
                    , Html.iframe []
                    , Html.img []
                    , Html.object [] [] []
                    , Html.picture [] [] (Html.img [])
                    , Html.video [] [] [] []
                    ]
                )
            ++ supports "InteractiveContent"
                (interactiveNode []
                    [ Html.a [] []
                    , Html.audio [] [] [] []
                    , Html.button [] []
                    , Html.details [] (Html.summary [] []) []
                    , Html.embed []
                    , Html.iframe []
                    , Html.img []
                    , Html.input []
                    , Html.label [] []
                    , Html.object [] [] []
                    , Html.select [] []
                    , Html.textarea [] ""
                    , Html.video [] [] [] []
                    ]
                )
            ++ supports "GlobalAttributes"
                (globalAttributesNode
                    [ Attributes.accesskey []
                    , Attributes.autocapitalize Attributes.on
                    , Attributes.autofocus True
                    , Attributes.class []
                    , Attributes.contenteditable (Just True)
                    , Attributes.data_ "custom" "value"
                    , Attributes.dir Attributes.ltr
                    , Attributes.draggable (Just True)
                    , Attributes.enterkeyhint Attributes.enter
                    , Attributes.hidden True
                    , Attributes.id ""
                    , Attributes.inputmode Attributes.none
                    , Attributes.is ""
                    , Attributes.itemid ""
                    , Attributes.itemprop []
                    , Attributes.itemref []
                    , Attributes.itemscope True
                    , Attributes.itemtype []
                    , Attributes.lang ""
                    , Attributes.nonce 0
                    , Attributes.slot ""
                    , Attributes.spellcheck (Just True)
                    , Attributes.style ""
                    , Attributes.tabindex -1
                    , Attributes.title ""
                    , Attributes.translate True
                    ]
                )
            ++ test "article" (Html.article [] [])
            ++ test "section" (Html.section [] [])
            ++ test "nav" (Html.nav [] [])
            ++ test "aside" (Html.aside [] [])
            ++ test "h1" (Html.h1 [] [])
            ++ test "h2" (Html.h2 [] [])
            ++ test "h3" (Html.h3 [] [])
            ++ test "h4" (Html.h4 [] [])
            ++ test "h5" (Html.h5 [] [])
            ++ test "h6" (Html.h6 [] [])
            ++ test "hgroup"
                (Html.hgroup []
                    [ Html.h1 [] []
                    , Html.h2 [] []
                    , Html.h3 [] []
                    , Html.h4 [] []
                    , Html.h5 [] []
                    , Html.h6 [] []
                    ]
                )
            ++ test "header" (Html.header [] [])
            ++ test "footer" (Html.footer [] [])
            ++ test "address" (Html.address [] [])
            ++ test "p" (Html.p [] [])
            ++ test "hr" (Html.hr [])
            ++ test "pre" (Html.pre [] [])
            ++ test "blockquote" (Html.blockquote [ Attributes.cite "" ] [])
            ++ test "ol"
                (Html.ol
                    [ Attributes.reversed True
                    , Attributes.start 0
                    , Attributes.type_list Attributes.ordinal
                    ]
                    [ Html.li [] [] ]
                )
            ++ test "ul"
                (Html.ul []
                    [ Html.li [] [] ]
                )
            ++ test "menu"
                (Html.menu []
                    [ Html.li [] [] ]
                )
            ++ test "li" (Html.li [ Attributes.value_ordinal 0 ] [])
            ++ test "dl" (Html.dl [] [ Html.dt [] [], Html.dd [] [] ])
            ++ numbered "dl" 1 (Html.dlWrapped [] [ Html.divDl [] [] ])
            ++ test "dt" (Html.dt [] [])
            ++ test "dd" (Html.dd [] [])
            ++ test "figure" (Html.figureNoCaption [] [])
            ++ numbered "figure" 1 (Html.figure [] (Html.figcaption [] []) [])
            ++ numbered "figure" 2 (Html.figureEndingCaption [] [] (Html.figcaption [] []))
            ++ test "figcaption" (Html.figcaption [] [])
            ++ test "main" (Html.main_ [] [])
            ++ test "div" (Html.div [] [])
            ++ numbered "div" 1 (Html.divDl [] [])
            ++ test "a"
                (Html.a
                    [ Attributes.href ""
                    , Attributes.target Attributes.blank_
                    , Attributes.download ""
                    , Attributes.ping []
                    , Attributes.rel []
                    , Attributes.hreflang ""
                    , Attributes.type_mime ""
                    , Attributes.referrerpolicy ""
                    ]
                    []
                )
            ++ test "em" (Html.em [] [])
            ++ test "strong" (Html.strong [] [])
            ++ test "small" (Html.small [] [])
            ++ test "s" (Html.s [] [])
            ++ test "cite" (Html.cite [] [])
            ++ test "q" (Html.q [ Attributes.cite "" ] [])
            ++ test "dfn" (Html.dfn [] [])
            ++ test "abbr" (Html.abbr [] [])
            ++ test "ruby" (Html.ruby [] [] [])
            ++ numbered "ruby" 1 (Html.rubyWrapper [] (Html.rubyDescendent [] []) [])
            ++ test "rt" (Html.rt [] [])
            ++ test "rp" (Html.rp [] "")
            ++ test "data" (Html.data [ Attributes.value "" ] [])
            ++ test "time" (Html.time [ Attributes.datetime "" ] [])
            ++ numbered "time" 1 (Html.timeText [ Attributes.datetime "" ] "")
            ++ test "code" (Html.code [] [])
            ++ test "var" (Html.var [] [])
            ++ test "samp" (Html.samp [] [])
            ++ test "kbd" (Html.kbd [] [])
            ++ test "sub" (Html.sub [] [])
            ++ test "sup" (Html.sup [] [])
            ++ test "i" (Html.i [] [])
            ++ test "b" (Html.b [] [])
            ++ test "u" (Html.u [] [])
            ++ test "mark" (Html.mark [] [])
            ++ test "bdi" (Html.bdi [] [])
            ++ test "bdo" (Html.bdo [] [])
            ++ test "span" (Html.span [] [])
            ++ test "br" (Html.br [])
            ++ test "wbr" (Html.wbr [])
            ++ test "ins" (Html.ins [ Attributes.cite "", Attributes.datetime "" ] [])
            ++ test "del" (Html.del [ Attributes.cite "", Attributes.datetime "" ] [])
            ++ test "picture" (Html.picture [] [ Html.source [] ] (Html.img []))
            ++ test "source"
                (Html.source
                    [ Attributes.src ""
                    , Attributes.type_mime ""
                    , Attributes.srcset []
                    , Attributes.sizes []
                    , Attributes.media ""
                    ]
                )
            ++ test "img"
                (Html.img
                    [ Attributes.alt ""
                    , Attributes.src ""
                    , Attributes.srcset []
                    , Attributes.sizes []
                    , Attributes.crossorigin Attributes.anonymous
                    , Attributes.usemap ""
                    , Attributes.ismap True
                    , Attributes.width 0
                    , Attributes.height 0
                    , Attributes.referrerpolicy ""
                    , Attributes.decoding Attributes.sync
                    ]
                )
            ++ test "iframe"
                (Html.iframe
                    [ Attributes.src ""
                    , Attributes.srcdoc ""
                    , Attributes.name ""
                    , Attributes.sandbox [ Attributes.allow_forms ]
                    , Attributes.allow ""
                    , Attributes.allowfullscreen True
                    , Attributes.allowpaymentrequest True
                    , Attributes.width 0
                    , Attributes.height 0
                    , Attributes.referrerpolicy ""
                    ]
                )
            ++ test "embed"
                (Html.embed
                    [ Attributes.src ""
                    , Attributes.type_mime ""
                    , Attributes.width 0
                    , Attributes.height 0
                    ]
                )
            ++ test "object"
                (Html.object
                    [ Attributes.data ""
                    , Attributes.type_mime ""
                    , Attributes.name ""
                    , Attributes.height 0
                    ]
                    [ Html.param [] ( "", "" ) ]
                    []
                )
            ++ test "video"
                (Html.video
                    [ Attributes.src ""
                    , Attributes.crossorigin Attributes.anonymous
                    , Attributes.poster ""
                    , Attributes.preload Attributes.none
                    , Attributes.autoplay True
                    , Attributes.playsinline True
                    , Attributes.loop True
                    , Attributes.muted True
                    , Attributes.controls True
                    , Attributes.width 0
                    , Attributes.height 0
                    ]
                    [ Html.source [] ]
                    [ Html.track [] ]
                    []
                )
            ++ test "audio"
                (Html.audio
                    [ Attributes.src ""
                    , Attributes.crossorigin Attributes.anonymous
                    , Attributes.preload Attributes.none
                    , Attributes.autoplay True
                    , Attributes.loop True
                    , Attributes.muted True
                    , Attributes.controls True
                    ]
                    [ Html.source [] ]
                    [ Html.track [] ]
                    []
                )
            ++ test "track"
                (Html.track
                    [ Attributes.kind Attributes.subtitles
                    , Attributes.src ""
                    , Attributes.srclang ""
                    , Attributes.label ""
                    , Attributes.default True
                    ]
                )
            ++ test "map" (Html.map [ Attributes.name "" ] [])
            ++ test "area"
                (Html.area
                    [ Attributes.alt ""
                    , Attributes.coords []
                    , Attributes.shape Attributes.circ
                    , Attributes.href ""
                    , Attributes.target Attributes.blank_
                    , Attributes.download ""
                    , Attributes.ping []
                    , Attributes.rel []
                    , Attributes.referrerpolicy ""
                    ]
                )
            ++ test "table"
                (Html.table []
                    |> Html.caption [] []
                    |> Html.colgroup [ Attributes.span 0 ] [ Html.col [] ]
                    |> Html.thead [] [ Html.tr [] [] ]
                    |> Html.tfoot [] [ Html.tr [] [] ]
                    |> Html.tbody [] []
                )
            ++ numbered "table"
                1
                (Html.table []
                    |> Html.trbody []
                )
            ++ test "col" (Html.col [])
            ++ test "tr" (Html.tr [] [ Html.td [] [], Html.th [] [] ])
            ++ test "td"
                (Html.td
                    [ Attributes.colspan 0
                    , Attributes.rowspan 0
                    , Attributes.headers []
                    ]
                    []
                )
            ++ test "th"
                (Html.th
                    [ Attributes.colspan 0
                    , Attributes.rowspan 0
                    , Attributes.headers []
                    , Attributes.scope Attributes.row
                    , Attributes.abbr ""
                    ]
                    []
                )
            ++ test "form"
                (Html.form
                    [ Attributes.acceptcharset []
                    , Attributes.action ""
                    , Attributes.autocomplete True
                    , Attributes.enctype Attributes.form_url_encoded
                    , Attributes.method Attributes.get
                    , Attributes.name ""
                    , Attributes.novalidate True
                    , Attributes.target Attributes.blank_
                    , Attributes.rel []
                    ]
                    []
                )
            ++ test "label" (Html.label [ Attributes.for "" ] [])
            ++ test "input"
                (Html.input
                    [ Attributes.accept []
                    , Attributes.alt ""
                    , Attributes.autocomplete True
                    , Attributes.checked True
                    , Attributes.dirname ""
                    , Attributes.disabled True
                    , Attributes.form ""
                    , Attributes.formaction ""
                    , Attributes.formenctype Attributes.form_url_encoded
                    , Attributes.formmethod Attributes.get
                    , Attributes.formnovalidate True
                    , Attributes.formtarget Attributes.blank_
                    , Attributes.height 0
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.maxlength 0
                    , Attributes.min 0
                    , Attributes.minlength 0
                    , Attributes.multiple True
                    , Attributes.name ""
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    , Attributes.src ""
                    , Attributes.step 0
                    , Attributes.type_input ""
                    , Attributes.value ""
                    , Attributes.width 0
                    ]
                )
            ++ numbered "input" 1 (Html.hidden [ Attributes.autocomplete True ])
            ++ numbered "input"
                2
                (Html.textInput
                    [ Attributes.autocomplete True
                    , Attributes.dirname ""
                    , Attributes.list ""
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                )
            ++ numbered "input"
                3
                (Html.search
                    [ Attributes.autocomplete True
                    , Attributes.dirname ""
                    , Attributes.list ""
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                )
            ++ numbered "input"
                4
                (Html.url
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                )
            ++ numbered "input"
                5
                (Html.tel
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                )
            ++ numbered "input"
                6
                (Html.email
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.multiple True
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                )
            ++ numbered "input"
                7
                (Html.password
                    [ Attributes.autocomplete True
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.pattern ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                )
            ++ numbered "input"
                8
                (Html.date
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                9
                (Html.month
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                10
                (Html.week
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                11
                (Html.timeInput
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                12
                (Html.datetime
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                13
                (Html.number
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                14
                (Html.range
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.max 0
                    , Attributes.min 0
                    , Attributes.step 0
                    ]
                )
            ++ numbered "input"
                15
                (Html.color
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    ]
                )
            ++ numbered "input"
                16
                (Html.checkbox
                    [ Attributes.checked True
                    , Attributes.required True
                    ]
                )
            ++ numbered "input"
                17
                (Html.radio
                    [ Attributes.checked True
                    , Attributes.required True
                    ]
                )
            ++ numbered "input"
                18
                (Html.file
                    [ Attributes.accept []
                    , Attributes.required True
                    ]
                )
            ++ numbered "input"
                19
                (Html.submit
                    [ Attributes.formaction ""
                    , Attributes.formenctype Attributes.form_url_encoded
                    , Attributes.formmethod Attributes.get
                    , Attributes.formnovalidate True
                    , Attributes.formtarget Attributes.blank_
                    ]
                )
            ++ numbered "input"
                20
                (Html.imageButton
                    [ Attributes.alt ""
                    , Attributes.formaction ""
                    , Attributes.formenctype Attributes.form_url_encoded
                    , Attributes.formmethod Attributes.get
                    , Attributes.formnovalidate True
                    , Attributes.formtarget Attributes.blank_
                    , Attributes.height 0
                    , Attributes.src ""
                    , Attributes.width 0
                    ]
                )
            ++ numbered "input" 21 (Html.resetButton [])
            ++ numbered "input" 22 (Html.buttonInput [])
            ++ test "button"
                (Html.button
                    [ Attributes.disabled True
                    , Attributes.formaction ""
                    , Attributes.formenctype Attributes.form_url_encoded
                    , Attributes.formmethod Attributes.get
                    , Attributes.formnovalidate True
                    , Attributes.formtarget Attributes.blank_
                    , Attributes.name ""
                    , Attributes.type_button Attributes.button
                    , Attributes.value ""
                    ]
                    []
                )
            ++ test "select"
                (Html.select
                    [ Attributes.autocomplete True
                    , Attributes.disabled True
                    , Attributes.form ""
                    , Attributes.multiple True
                    , Attributes.name ""
                    , Attributes.required True
                    , Attributes.size 0
                    ]
                    []
                )
            ++ test "optgroup"
                (Html.optgroup
                    [ Attributes.disabled True
                    , Attributes.label ""
                    ]
                    []
                )
            ++ test "datalist" (Html.datalistText [] [])
            ++ numbered "datalist" 1 (Html.datalist [] [ Html.option [] "" ])
            ++ test "option" (Html.option [] "")
            ++ numbered "option" 1 (Html.optionLabelled [] "")
            ++ test "textarea"
                (Html.textarea
                    [ Attributes.autocomplete True
                    , Attributes.cols 0
                    , Attributes.dirname ""
                    , Attributes.disabled True
                    , Attributes.form ""
                    , Attributes.maxlength 0
                    , Attributes.minlength 0
                    , Attributes.name ""
                    , Attributes.placeholder ""
                    , Attributes.readonly True
                    , Attributes.required True
                    , Attributes.rows 0
                    , Attributes.wrap Attributes.soft
                    ]
                    ""
                )
            ++ test "output"
                (Html.output
                    [ Attributes.for ""
                    , Attributes.form ""
                    , Attributes.name ""
                    ]
                    []
                )
            ++ test "progress"
                (Html.progress
                    [ Attributes.value_ordinal 0
                    , Attributes.max 0
                    ]
                    []
                )
            ++ test "meter"
                (Html.meter
                    [ Attributes.value_ordinal 0
                    , Attributes.min 0
                    , Attributes.max 0
                    , Attributes.low 0
                    , Attributes.high 0
                    , Attributes.optimum 0
                    ]
                    []
                )
            ++ test "fieldset"
                (Html.fieldset
                    [ Attributes.disabled True
                    , Attributes.form ""
                    , Attributes.name ""
                    ]
                    ( [], [] )
                    []
                )
            ++ test "details" (Html.details [ Attributes.open True ] (Html.summary [] []) [])
            ++ test "summary" (Html.summary [] [])
            ++ numbered "summary" 1 (Html.summaryHeader [] (Html.h1 [] []))
            ++ test "dialog" (Html.dialog [ Attributes.open True ] [])
            ++ test "canvas" (Html.canvas [ Attributes.width 0, Attributes.height 0 ])
            ++ [ Test.test "lazy is supported"
                    (\() ->
                        Html.lazy (\v1 -> Html.node "test" [] []) 1
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy2 is supported"
                    (\() ->
                        Html.lazy2 (\v1 v2 -> Html.node "test" [] []) 1 2
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy3 is supported"
                    (\() ->
                        Html.lazy3 (\v1 v2 v3 -> Html.node "test" [] []) 1 2 3
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy4 is supported"
                    (\() ->
                        Html.lazy4 (\v1 v2 v3 v4 -> Html.node "test" [] []) 1 2 3 4
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy5 is supported"
                    (\() ->
                        Html.lazy5 (\v1 v2 v3 v4 v5 -> Html.node "test" [] []) 1 2 3 4 5
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy6 is supported"
                    (\() ->
                        Html.lazy6 (\v1 v2 v3 v4 v5 v6 -> Html.node "test" [] []) 1 2 3 4 5 6
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy7 is supported"
                    (\() ->
                        Html.lazy7 (\v1 v2 v3 v4 v5 v6 v7 -> Html.node "test" [] []) 1 2 3 4 5 6 7
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy8 is supported"
                    (\() ->
                        Html.lazy8 (\v1 v2 v3 v4 v5 v6 v7 v8 -> Html.node "test" [] []) 1 2 3 4 5 6 7 8
                            |> Html.toHtml
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               ]
        )
