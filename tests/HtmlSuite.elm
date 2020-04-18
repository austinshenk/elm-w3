module HtmlSuite exposing (..)

import Json.Decode as Json
import Test exposing (..)
import Test.Html.Query as Query
import Test.Html.Selector as Selector
import W3.Html as Html
import W3.Html.Attributes as Attributes


flowNode : List (Html.Attribute a msg) -> List (Html.Node Html.FlowContent msg) -> Html.Node b msg
flowNode =
    Html.node "node"


headingNode : List (Html.Attribute a msg) -> List (Html.Node Html.HeadingContent msg) -> Html.Node b msg
headingNode =
    Html.node "node"


sectioningNode : List (Html.Attribute a msg) -> List (Html.Node Html.SectioningContent msg) -> Html.Node b msg
sectioningNode =
    Html.node "node"


phrasingNode : List (Html.Attribute a msg) -> List (Html.Node Html.PhrasingContent msg) -> Html.Node b msg
phrasingNode =
    Html.node "node"


embeddedNode : List (Html.Attribute a msg) -> List (Html.Node Html.EmbeddedContent msg) -> Html.Node b msg
embeddedNode =
    Html.node "node"


interactiveNode : List (Html.Attribute a msg) -> List (Html.Node Html.InteractiveContent msg) -> Html.Node b msg
interactiveNode =
    Html.node "node"


globalAttributesNode : List (Html.GlobalAttributes {} msg) -> Html.Node b msg
globalAttributesNode attributes =
    Html.node "node" attributes []


test : String -> Html.Node b msg -> List Test
test name node =
    [ Test.test ("element: " ++ name)
        (\() ->
            node
                |> Html.toNode
                |> Query.fromHtml
                |> Query.has [ Selector.tag name ]
        )
    ]


numbered : String -> Int -> Html.Node b msg -> List Test
numbered name index node =
    [ Test.test ("element: " ++ name ++ " variation " ++ String.fromInt index)
        (\() ->
            node
                |> Html.toNode
                |> Query.fromHtml
                |> Query.has [ Selector.tag name ]
        )
    ]


supports : String -> Html.Node b msg -> List Test
supports testName node =
    [ Test.test testName
        (\() ->
            node
                |> Html.toNode
                |> Query.fromHtml
                |> Query.has [ Selector.tag "node" ]
        )
    ]


type Msg
    = Noop
    | Value String
    | Value2 String String


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
                , Html.dlKeyed [] []
                , Html.dlWrapped [] []
                , Html.dlWrappedKeyed [] []
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
                , Html.olKeyed [] []
                , Html.p [] []
                , Html.pre [] []
                , Html.table [] |> Html.tbody [] []
                , Html.ul [] []
                , Html.ulKeyed [] []
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
                    , Attributes.contenteditable True
                    , Attributes.data_ "custom" "value"
                    , Attributes.dir Attributes.ltr
                    , Attributes.draggable True
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
                    , Attributes.nonce ""
                    , Attributes.slot ""
                    , Attributes.spellcheck True
                    , Attributes.style "" ""
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
            ++ numbered "ol"
                1
                (Html.olKeyed
                    [ Attributes.reversed True
                    , Attributes.start 0
                    , Attributes.type_list Attributes.ordinal
                    ]
                    [ ( "1", Html.li [] [] ) ]
                )
            ++ test "ul"
                (Html.ul []
                    [ Html.li [] [] ]
                )
            ++ numbered "ul"
                1
                (Html.ulKeyed []
                    [ ( "1", Html.li [] [] ) ]
                )
            ++ test "menu"
                (Html.menu []
                    [ Html.li [] [] ]
                )
            ++ test "li" (Html.li [ Attributes.value_ordinal 0 ] [])
            ++ test "dl" (Html.dl [] [ Html.dt [] [], Html.dd [] [] ])
            ++ numbered "dl" 1 (Html.dlKeyed [] [ ( "1", Html.dt [] [] ), ( "2", Html.dd [] [] ) ])
            ++ numbered "dl" 2 (Html.dlWrapped [] [ Html.divDl [] [] ])
            ++ numbered "dl" 3 (Html.dlWrappedKeyed [] [ ( "1", Html.divDl [] [] ) ])
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
                    , Attributes.referrerpolicy Attributes.no_referrer
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
                    , Attributes.referrerpolicy Attributes.no_referrer
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
                    , Attributes.referrerpolicy Attributes.no_referrer
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
                    [ Attributes.data []
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
                    , Attributes.referrerpolicy Attributes.no_referrer
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
                    , Attributes.files ""
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
                    , Attributes.valueAsNumber 0
                    , Attributes.valueAsDate ""
                    , Attributes.width 0
                    ]
                )
            ++ numbered "input" 1 (Html.hidden [ Attributes.autocomplete True, Attributes.value "" ])
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
                    , Attributes.value ""
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
                    , Attributes.value ""
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
                    , Attributes.value ""
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
                    , Attributes.value ""
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
                    , Attributes.value ""
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
                    , Attributes.value ""
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
                    , Attributes.value ""
                    , Attributes.valueAsDate ""
                    , Attributes.valueAsNumber 0
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
                    , Attributes.value ""
                    , Attributes.valueAsDate ""
                    , Attributes.valueAsNumber 0
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
                    , Attributes.value ""
                    , Attributes.valueAsDate ""
                    , Attributes.valueAsNumber 0
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
                    , Attributes.value ""
                    , Attributes.valueAsDate ""
                    , Attributes.valueAsNumber 0
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
                    , Attributes.value ""
                    , Attributes.valueAsNumber 0
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
                    , Attributes.value ""
                    , Attributes.valueAsNumber 0
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
                    , Attributes.value ""
                    , Attributes.valueAsNumber 0
                    ]
                )
            ++ numbered "input"
                15
                (Html.color
                    [ Attributes.autocomplete True
                    , Attributes.list ""
                    , Attributes.value ""
                    ]
                )
            ++ numbered "input"
                16
                (Html.checkbox
                    [ Attributes.checked True
                    , Attributes.required True
                    , Attributes.value ""
                    ]
                )
            ++ numbered "input"
                17
                (Html.radio
                    [ Attributes.checked True
                    , Attributes.required True
                    , Attributes.value ""
                    ]
                )
            ++ numbered "input"
                18
                (Html.file
                    [ Attributes.accept []
                    , Attributes.required True
                    , Attributes.value ""
                    , Attributes.files ""
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
                    , Attributes.value ""
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
                    , Attributes.value ""
                    ]
                )
            ++ numbered "input" 21 (Html.resetButton [ Attributes.value "" ])
            ++ numbered "input" 22 (Html.buttonInput [ Attributes.value "" ])
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
            ++ [ Test.test "text is supported on any element"
                    (\() ->
                        flowNode [] [ Html.text "something" ]
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.text "something" ]
                    )
               ]
            ++ [ Test.test "keyed nodes are supported"
                    (\() ->
                        Html.node "basic" [] [ Html.keyed "test" [] [] ]
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               ]
            ++ [ Test.test "lazy is supported"
                    (\() ->
                        Html.lazy (\_ -> Html.node "test" [] []) 1
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy2 is supported"
                    (\() ->
                        Html.lazy2 (\_ _ -> Html.node "test" [] []) 1 2
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy3 is supported"
                    (\() ->
                        Html.lazy3 (\_ _ _ -> Html.node "test" [] []) 1 2 3
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy4 is supported"
                    (\() ->
                        Html.lazy4 (\_ _ _ _ -> Html.node "test" [] []) 1 2 3 4
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy5 is supported"
                    (\() ->
                        Html.lazy5 (\_ _ _ _ _ -> Html.node "test" [] []) 1 2 3 4 5
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy6 is supported"
                    (\() ->
                        Html.lazy6 (\_ _ _ _ _ _ -> Html.node "test" [] []) 1 2 3 4 5 6
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy7 is supported"
                    (\() ->
                        Html.lazy7 (\_ _ _ _ _ _ _ -> Html.node "test" [] []) 1 2 3 4 5 6 7
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               , Test.test "lazy8 is supported"
                    (\() ->
                        Html.lazy8 (\_ _ _ _ _ _ _ _ -> Html.node "test" [] []) 1 2 3 4 5 6 7 8
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "test" ]
                    )
               ]
            ++ [ Test.test "events are supported"
                    (\() ->
                        globalAttributesNode
                            [ Html.on "test" (Json.succeed { message = Noop, preventDefault = False, stopPropagation = False })
                            , Html.on "test"
                                (Json.map (\value -> Html.Event (Value value) False False)
                                    (Json.at [ "target", "value" ] Json.string)
                                )
                            , Html.on "test"
                                (Json.map2 (\value value2 -> Html.Event (Value2 value value2) False False)
                                    (Json.at [ "target", "value" ] Json.string)
                                    (Json.at [ "target", "checked" ] Json.string)
                                )
                            , Html.onabort Noop
                            , Html.onauxclick Noop
                            , Html.onblur Noop
                            , Html.oncancel Noop
                            , Html.oncanplay Noop
                            , Html.oncanplaythrough Noop
                            , Html.onchange Noop
                            , Html.onclick Noop
                            , Html.onclose Noop
                            , Html.oncontextmenu Noop
                            , Html.oncopy Noop
                            , Html.oncuechange Noop
                            , Html.oncut Noop
                            , Html.ondblclick Noop
                            , Html.ondrag Noop
                            , Html.ondragend Noop
                            , Html.ondragenter Noop
                            , Html.ondragexit Noop
                            , Html.ondragleave Noop
                            , Html.ondragover Noop
                            , Html.ondragstart Noop
                            , Html.ondrop Noop
                            , Html.ondurationchange Noop
                            , Html.onemptied Noop
                            , Html.onended Noop
                            , Html.onerror Noop
                            , Html.onfocus Noop
                            , Html.onformdata Noop
                            , Html.oninput Noop
                            , Html.oninvalid Noop
                            , Html.onkeydown Noop
                            , Html.onkeypress Noop
                            , Html.onkeyup Noop
                            , Html.onload Noop
                            , Html.onloadeddata Noop
                            , Html.onloadedmetadata Noop
                            , Html.onloadedstart Noop
                            , Html.onmousedown Noop
                            , Html.onmouseenter Noop
                            , Html.onmouseleave Noop
                            , Html.onmousemove Noop
                            , Html.onmouseout Noop
                            , Html.onmouseover Noop
                            , Html.onmouseup Noop
                            , Html.onpaste Noop
                            , Html.onpause Noop
                            , Html.onplay Noop
                            , Html.onplaying Noop
                            , Html.onprogress Noop
                            , Html.onratechange Noop
                            , Html.onreset Noop
                            , Html.onresize Noop
                            , Html.onscroll Noop
                            , Html.onsecuritypolicyviolation Noop
                            , Html.onseeked Noop
                            , Html.onseeking Noop
                            , Html.onselect Noop
                            , Html.onslotchange Noop
                            , Html.onstalled Noop
                            , Html.onsubmit Noop
                            , Html.onsuspend Noop
                            , Html.ontimeupdate Noop
                            , Html.ontoggle Noop
                            , Html.onvolumechange Noop
                            , Html.onwaiting Noop
                            , Html.onwheel Noop
                            ]
                            |> Html.toNode
                            |> Query.fromHtml
                            |> Query.has [ Selector.tag "node" ]
                    )
               ]
        )
