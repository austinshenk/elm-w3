module W3.Html exposing
    ( Node, GlobalAttributes
    , FlowContent, HeadingContent, SectioningContent, PhrasingContent, EmbeddedContent, InteractiveContent
    , article, section, nav, aside, h1, h2, h3, h4, h5, h6, hgroup, header, footer, address
    , p, hr, pre, blockquote, ol, ul, menu, li, dl, dl1, dt, dd, figure, figure1, figure2, figcaption, main_, div, dataDiv
    , a, em, strong, small, s, cite, q, dfn, abbr, ruby, ruby1, ruby2, ruby3, rt, rp, data, time, timeText, code, var, samp, kbd, sub, sup, i, b, u, mark, bdi, bdo, span, br, wbr
    , ins, del
    , picture, source, img
    , iframe, embed, object, param
    , video, video1, audio, audio1, track
    , map, area
    , Table, TableContents, table, caption, colgroup, col, thead, tfoot, tbody, trbody, tr, td, th
    , form, label
    , input, hidden, textInput, search, url, tel, email, password, date, month, week, timeInput, datetime, number, range, color, checkbox, radio, file, submit, imageButton, resetButton, buttonInput
    , button, select, optgroup, datalist, datalist1, option, optionLabelled, textarea, output, progress, meter, fieldset, fieldset1, legend
    , details, summary, summaryHeader, dialog
    , toHtml
    )

{-| Module that defines all usable HTML elements, their content models, and supported attributes.


# Definitions

@docs Node, GlobalAttributes


# Content Categories

Each HTML element can be categorized by zero or more of the following categories. The categories are related to each other by [this chart](https://html.spec.whatwg.org/multipage/dom.html#kinds-of-content).

Note: _MetadataContent is not supported since all of its content needs to be located within a Head element or it is a script supporting element. These are not usable currently and script elements should not be supported by elm unless they are eventually just links to external resources._

@docs FlowContent, HeadingContent, SectioningContent, PhrasingContent, EmbeddedContent, InteractiveContent


# Elements

The following attempts to group elements together by function and use.


## Sections

<https://html.spec.whatwg.org/multipage/sections.html>

@docs article, section, nav, aside, h1, h2, h3, h4, h5, h6, hgroup, header, footer, address


## Grouping

<https://html.spec.whatwg.org/multipage/grouping-content.html>

@docs p, hr, pre, blockquote, ol, ul, menu, li, dl, dl1, dt, dd, figure, figure1, figure2, figcaption, main_, div, dataDiv


## Text

@docs a, em, strong, small, s, cite, q, dfn, abbr, ruby, ruby1, ruby2, ruby3, rt, rp, data, time, timeText, code, var, samp, kbd, sub, sup, i, b, u, mark, bdi, bdo, span, br, wbr


## Edits

@docs ins, del


## Embedded

@docs picture, source, img


## Iframe

@docs iframe, embed, object, param


## Media

@docs video, video1, audio, audio1, track


## Map

@docs map, area


## Table

@docs Table, TableContents, table, caption, colgroup, col, thead, tfoot, tbody, trbody, tr, td, th


## Forms

@docs form, label


## Inputs

@docs input, hidden, textInput, search, url, tel, email, password, date, month, week, timeInput, datetime, number, range, color, checkbox, radio, file, submit, imageButton, resetButton, buttonInput


## Form Elements

@docs button, select, optgroup, datalist, datalist1, option, optionLabelled, textarea, output, progress, meter, fieldset, fieldset1, legend


## Interactive Elements

@docs details, summary, summaryHeader, dialog


## Utility

@docs toHtml

-}

import VirtualDom
import W3.Html.Attributes.Help as Attributes


type Supported
    = Supported


{-| Type for each element
-}
type Node nodes msg
    = Node String (List (VirtualDom.Attribute msg)) (List (VirtualDom.Node msg))


{-| All elements support the use of these attributes as defined by [html.spec.whatwg.org/GlobalAttributes](https://html.spec.whatwg.org/multipage/dom.html#global-attributes)
-}
type alias GlobalAttributes a =
    Attributes.Attribute
        { a
            | accesskey : Attributes.Supported
            , autocapitalize : Attributes.Supported
            , autofocus : Attributes.Supported
            , class : Attributes.Supported
            , contenteditable : Attributes.Supported
            , data_ : Attributes.Supported
            , dir : Attributes.Supported
            , draggable : Attributes.Supported
            , enterkeyhint : Attributes.Supported
            , hidden : Attributes.Supported
            , id : Attributes.Supported
            , inputmode : Attributes.Supported
            , is : Attributes.Supported
            , itemid : Attributes.Supported
            , itemprop : Attributes.Supported
            , itemref : Attributes.Supported
            , itemscope : Attributes.Supported
            , itemtype : Attributes.Supported
            , lang : Attributes.Supported
            , nonce : Attributes.Supported
            , slot : Attributes.Supported
            , spellcheck : Attributes.Supported
            , style : Attributes.Supported
            , tabindex : Attributes.Supported
            , title : Attributes.Supported
            , translate : Attributes.Supported
        }


{-| Flow Content Category as defined by [html.spec.whatwg.org/FlowContent](https://html.spec.whatwg.org/multipage/dom.html#flow-content-2)
-}
type alias FlowContent =
    { -- Flow Content
      address : Supported
    , blockquote : Supported
    , dialog : Supported
    , div : Supported
    , dl : Supported
    , fieldset : Supported
    , figure : Supported
    , footer : Supported
    , form : Supported
    , header : Supported
    , hr : Supported
    , main_ : Supported
    , menu : Supported
    , ol : Supported
    , p : Supported
    , pre : Supported
    , table : Supported
    , ul : Supported

    -- Phrasing Content
    , abbr : Supported
    , area : Supported
    , b : Supported
    , bdi : Supported
    , bdo : Supported
    , br : Supported
    , cite : Supported
    , code : Supported
    , data : Supported
    , datalist : Supported
    , del : Supported
    , dfn : Supported
    , em : Supported
    , i : Supported
    , ins : Supported
    , kbd : Supported
    , map : Supported
    , mark : Supported
    , meter : Supported
    , output : Supported
    , progress : Supported
    , q : Supported
    , ruby : Supported
    , ruby1 : Supported
    , ruby2 : Supported
    , ruby3 : Supported
    , s : Supported
    , samp : Supported
    , slot : Supported
    , small : Supported
    , span : Supported
    , strong : Supported
    , sub : Supported
    , sup : Supported
    , time : Supported
    , u : Supported
    , var : Supported
    , wbr : Supported

    -- Heading Content
    , h1 : Supported
    , h2 : Supported
    , h3 : Supported
    , h4 : Supported
    , h5 : Supported
    , h6 : Supported
    , hgroup : Supported

    -- Sectioning Content
    , article : Supported
    , aside : Supported
    , nav : Supported
    , section : Supported

    -- Embedded Content
    , canvas : Supported
    , math : Supported
    , picture : Supported
    , svg : Supported

    -- Interactive Content
    , a : Supported
    , audio : Supported
    , button : Supported
    , details : Supported
    , embed : Supported
    , iframe : Supported
    , img : Supported
    , input : Supported
    , label : Supported
    , object : Supported
    , select : Supported
    , textarea : Supported
    , video : Supported

    -- Metadata Content
    -- , link : Supported - Not normally allowed in Body element
    -- , meta : Supported - Will only really be allowed in the Head element
    -- , noscript : Supported - Never be used since elm's JS won't even run
    -- , script : Supported - Script-supporting element
    -- , template : Supported - Script-supporting element
    }


{-| The Heading Content Category as defined by [html.spec.whatwg.org/HeadingContent](https://html.spec.whatwg.org/multipage/dom.html#heading-content)
-}
type alias HeadingContent =
    { h1 : Supported
    , h2 : Supported
    , h3 : Supported
    , h4 : Supported
    , h5 : Supported
    , h6 : Supported
    , hgroup : Supported
    }


{-| The Sectioning Content Category as defined by [html.spec.whatwg.org/SectioningContent](https://html.spec.whatwg.org/multipage/dom.html#sectioning-content)
-}
type alias SectioningContent =
    { article : Supported
    , aside : Supported
    , nav : Supported
    , section : Supported
    }


{-| The Phrasing Content Category as defined by [html.spec.whatwg.org/PhrasingContent](https://html.spec.whatwg.org/multipage/dom.html#phrasing-content)
-}
type alias PhrasingContent =
    { a : Supported
    , abbr : Supported
    , area : Supported
    , audio : Supported
    , b : Supported
    , bdi : Supported
    , bdo : Supported
    , br : Supported
    , button : Supported
    , canvas : Supported
    , cite : Supported
    , code : Supported
    , data : Supported
    , datalist : Supported
    , del : Supported
    , dfn : Supported
    , em : Supported
    , embed : Supported
    , i : Supported
    , iframe : Supported
    , img : Supported
    , input : Supported
    , ins : Supported
    , kbd : Supported
    , label : Supported
    , link : Supported
    , map : Supported
    , mark : Supported
    , math : Supported
    , meta : Supported
    , meter : Supported
    , noscript : Supported
    , object : Supported
    , output : Supported
    , picture : Supported
    , progress : Supported
    , q : Supported
    , ruby : Supported
    , ruby1 : Supported
    , ruby2 : Supported
    , ruby3 : Supported
    , s : Supported
    , samp : Supported
    , script : Supported
    , select : Supported
    , slot : Supported
    , small : Supported
    , span : Supported
    , strong : Supported
    , sub : Supported
    , sup : Supported
    , svg : Supported
    , template : Supported
    , textarea : Supported
    , time : Supported
    , u : Supported
    , var : Supported
    , video : Supported
    , wbr : Supported
    }


{-| The Embedded Content Category as defined by [html.spec.whatwg.org/EmbeddedContent](https://html.spec.whatwg.org/multipage/dom.html#embedded-content)
-}
type alias EmbeddedContent =
    { audio : Supported
    , canvas : Supported
    , embed : Supported
    , iframe : Supported
    , img : Supported
    , math : Supported
    , object : Supported
    , picture : Supported
    , svg : Supported
    , video : Supported
    }


{-| The Interactive Content Category as defined by [html.spec.whatwg.org/InteractiveContent](https://html.spec.whatwg.org/multipage/dom.html#interactive-content)
-}
type alias InteractiveContent =
    { a : Supported
    , audio : Supported
    , button : Supported
    , details : Supported
    , embed : Supported
    , iframe : Supported
    , img : Supported
    , input : Supported
    , label : Supported
    , object : Supported
    , select : Supported
    , textarea : Supported
    , video : Supported
    }


{-| Follows the element definition at [html.spec.whatwg.org/article](https://html.spec.whatwg.org/multipage/sections.html#the-article-element)
-}
article : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | article : Supported } msg
article =
    node "article"


{-| Follows the element definition at [html.spec.whatwg.org/section](https://html.spec.whatwg.org/multipage/sections.html#the-section-element)
-}
section : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | section : Supported } msg
section =
    node "section"


{-| Follows the element definition at [html.spec.whatwg.org/nav](https://html.spec.whatwg.org/multipage/sections.html#the-nav-element)
-}
nav : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | nav : Supported } msg
nav =
    node "nav"


{-| Follows the element definition at [html.spec.whatwg.org/aside](https://html.spec.whatwg.org/multipage/sections.html#the-aside-element)
-}
aside : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | aside : Supported } msg
aside =
    node "aside"


{-| Follows the element definition at [html.spec.whatwg.org/h1](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h1 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h1 : Supported } msg
h1 =
    node "h1"


{-| Follows the element definition at [html.spec.whatwg.org/h2](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h2 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h2 : Supported } msg
h2 =
    node "h2"


{-| Follows the element definition at [html.spec.whatwg.org/h3](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h3 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h3 : Supported } msg
h3 =
    node "h3"


{-| Follows the element definition at [html.spec.whatwg.org/h4](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h4 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h4 : Supported } msg
h4 =
    node "h4"


{-| Follows the element definition at [html.spec.whatwg.org/h5](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h5 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h5 : Supported } msg
h5 =
    node "h5"


{-| Follows the element definition at [html.spec.whatwg.org/h6](https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements)
-}
h6 : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | h6 : Supported } msg
h6 =
    node "h6"


{-| Follows the element definition at [html.spec.whatwg.org/hgroup](https://html.spec.whatwg.org/multipage/sections.html#the-hgroup-element)
-}
hgroup :
    List (GlobalAttributes {})
    ->
        List
            (Node
                { h1 : Supported
                , h2 : Supported
                , h3 : Supported
                , h4 : Supported
                , h5 : Supported
                , h6 : Supported
                }
                msg
            )
    -> Node { compatible | hgroup : Supported } msg
hgroup =
    node "hgroup"


{-| Follows the element definition at [html.spec.whatwg.org/header](https://html.spec.whatwg.org/multipage/sections.html#the-header-element)
-}
header : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | header : Supported } msg
header =
    -- Exclude header, footer descendant
    node "header"


{-| Follows the element definition at [html.spec.whatwg.org/footer](https://html.spec.whatwg.org/multipage/sections.html#the-header-element)
-}
footer : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | footer : Supported } msg
footer =
    -- Exclude header, footer descendant
    node "footer"


{-| Follows the element definition at [html.spec.whatwg.org/address](https://html.spec.whatwg.org/multipage/sections.html#the-address-element)
-}
address : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | address : Supported } msg
address =
    -- Exclude heading content, sectioning content, header, footer, address descendant
    node "address"



{--GROUPING https://html.spec.whatwg.org/multipage/grouping-content.html --}


{-| Follows the element definition at [html.spec.whatwg.org/p](https://html.spec.whatwg.org/multipage/grouping-content.html#the-p-element)
-}
p : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | p : Supported } msg
p =
    node "p"


{-| Follows the element definition at [html.spec.whatwg.org/hr](https://html.spec.whatwg.org/multipage/grouping-content.html#the-hr-element)
-}
hr : List (GlobalAttributes {}) -> Node { compatible | hr : Supported } msg
hr attributes =
    node "hr" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/pre](https://html.spec.whatwg.org/multipage/grouping-content.html#the-pre-element)
-}
pre : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | pre : Supported } msg
pre =
    node "pre"


{-| Follows the element definition at [html.spec.whatwg.org/blockquote](https://html.spec.whatwg.org/multipage/grouping-content.html#the-blockquote-element)
-}
blockquote :
    List (GlobalAttributes { cite : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | blockquote : Supported } msg
blockquote =
    node "blockquote"


{-| Follows the element definition at [html.spec.whatwg.org/ol](https://html.spec.whatwg.org/multipage/grouping-content.html#the-ol-element)
-}
ol :
    List
        (GlobalAttributes
            { reversed : Attributes.Supported
            , start : Attributes.Supported
            , marker : Attributes.Supported
            }
        )
    -> List (Node { li : Supported } msg)
    -> Node { compatible | ol : Supported } msg
ol =
    node "ol"


{-| Follows the element definition at [html.spec.whatwg.org/ul](https://html.spec.whatwg.org/multipage/grouping-content.html#the-ul-element)
-}
ul : List (GlobalAttributes {}) -> List (Node { li : Supported } msg) -> Node { compatible | ul : Supported } msg
ul =
    node "ul"


{-| Follows the element definition at [html.spec.whatwg.org/menu](https://html.spec.whatwg.org/multipage/grouping-content.html#the-menu-element)
-}
menu : List (GlobalAttributes {}) -> List (Node { li : Supported } msg) -> Node { compatible | menu : Supported } msg
menu =
    node "menu"


{-| Follows the element definition at [html.spec.whatwg.org/li](https://html.spec.whatwg.org/multipage/grouping-content.html#the-li-element)
-}
li :
    List (GlobalAttributes { ordinalValue : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | li : Supported } msg
li =
    node "li"


{-| Follows the element definition at [html.spec.whatwg.org/dl](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element)
-}
dl : List (GlobalAttributes {}) -> List (Node { dt : Supported, dd : Supported } msg) -> Node { compatible | dl : Supported } msg
dl =
    node "dl"


{-| Follows the element definition at [html.spec.whatwg.org/dl](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element)
-}
dl1 : List (GlobalAttributes {}) -> List (Node { dataDiv : Supported } msg) -> Node { compatible | dl : Supported } msg
dl1 =
    node "dl"


{-| Follows the element definition at [html.spec.whatwg.org/dt](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dt-element)
_Exclude heading content, sectioning content, header, footer descendant_
-}
dt : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | dt : Supported } msg
dt =
    node "dt"


{-| Follows the element definition at [html.spec.whatwg.org/dd](https://html.spec.whatwg.org/multipage/grouping-content.html#the-dd-element)
-}
dd : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | dd : Supported } msg
dd =
    node "dd"


{-| Follows the element definition at [html.spec.whatwg.org/figure](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element)
-}
figure :
    List (GlobalAttributes {})
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Supported } msg
figure =
    node "figure"


{-| Follows the element definition at [html.spec.whatwg.org/figure](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element)
-}
figure1 :
    List (GlobalAttributes {})
    -> Node { figcaption : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Supported } msg
figure1 attributes figCaption nodes =
    Node "figure" (List.map toAttribute attributes) (toHtml figCaption :: List.map toHtml nodes)


{-| Follows the element definition at [html.spec.whatwg.org/figure](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element)
-}
figure2 :
    List (GlobalAttributes {})
    -> List (Node FlowContent msg)
    -> Node { figcaption : Supported } msg
    -> Node { compatible | figure : Supported } msg
figure2 attributes nodes figCaption =
    Node "figure" (List.map toAttribute attributes) (List.map toHtml nodes ++ [ toHtml figCaption ])


{-| Follows the element definition at [html.spec.whatwg.org/figcaption](https://html.spec.whatwg.org/multipage/grouping-content.html#the-figcaption-element)
-}
figcaption : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | figcaption : Supported } msg
figcaption =
    node "figcaption"


{-| Follows the element definition at [html.spec.whatwg.org/main](https://html.spec.whatwg.org/multipage/grouping-content.html#the-main-element)
-}
main_ : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | main_ : Supported } msg
main_ =
    node "main"


{-| Follows the element definition at [html.spec.whatwg.org/div](https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element)
-}
div : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Node { compatible | div : Supported } msg
div =
    node "div"


{-| Follows the element definition at [html.spec.whatwg.org/div](https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element)
-}
dataDiv : List (GlobalAttributes {}) -> List (Node { dt : Supported, dd : Supported } msg) -> Node { compatible | dataDiv : Supported } msg
dataDiv =
    node "div"



{--TEXT LEVEL https://html.spec.whatwg.org/multipage/text-level-semantics.html --}


{-| Follows the element definition at [html.spec.whatwg.org/a](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element)
-}
a :
    List
        (GlobalAttributes
            { href : Attributes.Supported
            , target : Attributes.Supported
            , download : Attributes.Supported
            , ping : Attributes.Supported
            , rel : Attributes.Supported
            , hreflang : Attributes.Supported
            , mimeType : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | a : Supported } msg
a =
    node "a"


{-| Follows the element definition at [html.spec.whatwg.org/em](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-em-element)
-}
em : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | em : Supported } msg
em =
    node "em"


{-| Follows the element definition at [html.spec.whatwg.org/strong](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-strong-element)
-}
strong : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | strong : Supported } msg
strong =
    node "strong"


{-| Follows the element definition at [html.spec.whatwg.org/small](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-small-element)
-}
small : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | small : Supported } msg
small =
    node "small"


{-| Follows the element definition at [html.spec.whatwg.org/s](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-s-element)
-}
s : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | s : Supported } msg
s =
    node "s"


{-| Follows the element definition at [html.spec.whatwg.org/cite](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-cite-element)
-}
cite : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | cite : Supported } msg
cite =
    node "cite"


{-| Follows the element definition at [html.spec.whatwg.org/q](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-q-element)
-}
q :
    List (GlobalAttributes { cite : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | q : Supported } msg
q =
    node "q"


{-| Follows the element definition at [html.spec.whatwg.org/dfn](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-dfn-element)
_Exclude dfn descendant_
-}
dfn : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | dfn : Supported } msg
dfn =
    node "dfn"


{-| Follows the element definition at [html.spec.whatwg.org/abbr](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element)
-}
abbr : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | abbr : Supported } msg
abbr =
    node "abbr"


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
Content model: _Exclude ruby descendant_
-}
ruby : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | ruby : Supported } msg
ruby =
    node "ruby"


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
Content model: _Exclude ruby descendant_
-}
ruby1 : List (GlobalAttributes {}) -> Node { ruby : Supported } msg -> Node { compatible | ruby1 : Supported } msg
ruby1 attributes rubyChild =
    Node "ruby" (List.map toAttribute attributes) [ toHtml rubyChild ]


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
Content model: _Exclude ruby descendant_
-}
ruby2 : List (GlobalAttributes {}) -> List (Node { rt : Supported } msg) -> Node { compatible | ruby2 : Supported } msg
ruby2 =
    node "ruby"


{-| Follows the element definition at [html.spec.whatwg.org/ruby](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element)
Content model: _Exclude ruby descendant_
-}
ruby3 :
    List (GlobalAttributes {})
    -> Node { rp : Supported } msg
    -> List ( Node { rt : Supported } msg, Node { rp : Supported } msg )
    -> Node { compatible | ruby3 : Supported } msg
ruby3 attributes rpFirst rtrpTuples =
    Node "ruby" (List.map toAttribute attributes) (toHtml rpFirst :: List.foldl ruby3Help [] rtrpTuples)


ruby3Help :
    ( Node { rt : Supported } msg, Node { rp : Supported } msg )
    -> List (VirtualDom.Node msg)
    -> List (VirtualDom.Node msg)
ruby3Help tuple childrenSoFar =
    childrenSoFar ++ [ toHtml (Tuple.first tuple), toHtml (Tuple.second tuple) ]


{-| Follows the element definition at [html.spec.whatwg.org/rt](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rt-element)
-}
rt : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | rt : Supported } msg
rt =
    node "rt"


{-| Follows the element definition at [html.spec.whatwg.org/rp](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rp-element)
-}
rp : List (GlobalAttributes {}) -> String -> Node { compatible | rp : Supported } msg
rp attributes content =
    Node "rp" (List.map toAttribute attributes) [ VirtualDom.text content ]


{-| Follows the element definition at [html.spec.whatwg.org/data](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-data-element)
-}
data :
    List (GlobalAttributes { value : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | data : Supported } msg
data =
    node "data"


{-| Follows the element definition at [html.spec.whatwg.org/time](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-time-element)
-}
time :
    List (GlobalAttributes { datetime : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | time : Supported } msg
time =
    node "time"


{-| Follows the element definition at [html.spec.whatwg.org/time](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-time-element)
-}
timeText :
    List (GlobalAttributes { datetime : Attributes.Supported })
    -> String
    -> Node { compatible | time : Supported } msg
timeText attributes content =
    Node "time" (List.map toAttribute attributes) [ VirtualDom.text content ]


{-| Follows the element definition at [html.spec.whatwg.org/code](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-code-element)
-}
code : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | code : Supported } msg
code =
    node "code"


{-| Follows the element definition at [html.spec.whatwg.org/var](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-var-element)
-}
var : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | var : Supported } msg
var =
    node "var"


{-| Follows the element definition at [html.spec.whatwg.org/samp](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-samp-element)
-}
samp : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | samp : Supported } msg
samp =
    node "samp"


{-| Follows the element definition at [html.spec.whatwg.org/kbd](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-kbd-element)
-}
kbd : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | kbd : Supported } msg
kbd =
    node "kbd"


{-| Follows the element definition at [html.spec.whatwg.org/sub](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements)
-}
sub : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | sub : Supported } msg
sub =
    node "sub"


{-| Follows the element definition at [html.spec.whatwg.org/sup](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements)
-}
sup : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | sup : Supported } msg
sup =
    node "sup"


{-| Follows the element definition at [html.spec.whatwg.org/i](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-i-element)
-}
i : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | i : Supported } msg
i =
    node "i"


{-| Follows the element definition at [html.spec.whatwg.org/b](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-b-element)
-}
b : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | b : Supported } msg
b =
    node "b"


{-| Follows the element definition at [html.spec.whatwg.org/u](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-u-element)
-}
u : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | u : Supported } msg
u =
    node "u"


{-| Follows the element definition at [html.spec.whatwg.org/mark](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-mark-element)
-}
mark : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | mark : Supported } msg
mark =
    node "mark"


{-| Follows the element definition at [html.spec.whatwg.org/bdi](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdi-element)
-}
bdi : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | bdi : Supported } msg
bdi =
    node "bdi"


{-| Follows the element definition at [html.spec.whatwg.org/bdo](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdo-element)
-}
bdo : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | bdo : Supported } msg
bdo =
    node "bdo"


{-| Follows the element definition at [html.spec.whatwg.org/span](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-span-element)
-}
span : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | span : Supported } msg
span =
    node "span"


{-| Follows the element definition at [html.spec.whatwg.org/br](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-br-element)
-}
br : List (GlobalAttributes {}) -> Node { compatible | br : Supported } msg
br attributes =
    node "br" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/wbr](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-wbr-element)
-}
wbr : List (GlobalAttributes {}) -> Node { compatible | wbr : Supported } msg
wbr attributes =
    node "wbr" attributes []



{--EDITS https://html.spec.whatwg.org/multipage/edits.html --}


{-| Follows the element definition at [html.spec.whatwg.org/ins](https://html.spec.whatwg.org/multipage/edits.html#the-ins-element)
-}
ins :
    List
        (GlobalAttributes
            { cite : Attributes.Supported
            , datetime : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | ins : Supported } msg
ins =
    node "ins"


{-| Follows the element definition at [html.spec.whatwg.org/del](https://html.spec.whatwg.org/multipage/edits.html#the-del-element)
-}
del :
    List
        (GlobalAttributes
            { cite : Attributes.Supported
            , datetime : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | del : Supported } msg
del =
    node "del"



{--EMBEDDED CONTENT https://html.spec.whatwg.org/multipage/embedded-content.html --}


{-| Follows the element definition at [html.spec.whatwg.org/picture](https://html.spec.whatwg.org/multipage/embedded-content.html#the-picture-element)
-}
picture :
    List (GlobalAttributes {})
    -> List (Node { source : Supported } msg)
    -> Node { img : Supported } msg
    -> Node { compatible | picture : Supported } msg
picture attributes sources image =
    Node "picture" (List.map toAttribute attributes) (List.map toHtml sources ++ [ toHtml image ])


{-| Follows the element definition at [html.spec.whatwg.org/source](https://html.spec.whatwg.org/multipage/embedded-content.html#the-source-element)
-}
source :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , mimeType : Attributes.Supported
            , srcset : Attributes.Supported
            , sizes : Attributes.Supported
            , media : Attributes.Supported
            }
        )
    -> Node { compatible | source : Supported } msg
source attributes =
    node "source" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/img](https://html.spec.whatwg.org/multipage/embedded-content.html#the-img-element)
-}
img :
    List
        (GlobalAttributes
            { alt : Attributes.Supported
            , src : Attributes.Supported
            , srcset : Attributes.Supported
            , sizes : Attributes.Supported
            , crossorigin : Attributes.Supported
            , usemap : Attributes.Supported
            , ismap : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            , decoding : Attributes.Supported
            }
        )
    -> Node { compatible | img : Supported } msg
img attributes =
    node "img" attributes []



{--IFRAME EMBED https://html.spec.whatwg.org/multipage/iframe-embed-object.html --}


{-| Follows the element definition at [html.spec.whatwg.org/iframe](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-iframe-element)
-}
iframe :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , srcdoc : Attributes.Supported
            , name : Attributes.Supported
            , sandbox : Attributes.Supported
            , allow : Attributes.Supported
            , allowfullscreen : Attributes.Supported
            , allowpaymentrequest : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            }
        )
    -> Node { compatible | iframe : Supported } msg
iframe attributes =
    node "iframe" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/embed](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-embed-element)
-}
embed :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , mimeType : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> Node { compatible | embed : Supported } msg
embed attributes =
    node "embed" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/object](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-object-element)
-}
object :
    List
        (GlobalAttributes
            { data : Attributes.Supported
            , mimeType : Attributes.Supported
            , name : Attributes.Supported
            , usemap : Attributes.Supported
            , form : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> List (Node { param : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | object : Supported } msg
object attributes params contents =
    Node "object" (List.map toAttribute attributes) (List.map toHtml params ++ List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/param](https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-param-element)
-}
param :
    ( String, String )
    -> List (GlobalAttributes {})
    -> Node { compatible | param : Supported } msg
param ( name, value ) attributes =
    Node "param"
        (VirtualDom.attribute "name" name
            :: VirtualDom.attribute "value" value
            :: List.map toAttribute attributes
        )
        []



{--MEDIA https://html.spec.whatwg.org/multipage/media.html--}


{-| Follows the element definition at [html.spec.whatwg.org/video](https://html.spec.whatwg.org/multipage/media.html#the-video-element)
-}
video :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , poster : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , playsinline : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Supported } msg
video attributes tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml tracks ++ List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/video](https://html.spec.whatwg.org/multipage/media.html#the-video-element)
-}
video1 :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , poster : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , playsinline : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            , width : Attributes.Supported
            , height : Attributes.Supported
            }
        )
    -> List (Node { source : Supported } msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Supported } msg
video1 attributes sources tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml sources ++ List.map toHtml tracks ++ List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/audio](https://html.spec.whatwg.org/multipage/media.html#the-audio-element)
-}
audio :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            }
        )
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Supported } msg
audio attributes tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml tracks ++ List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/audio](https://html.spec.whatwg.org/multipage/media.html#the-audio-element)
-}
audio1 :
    List
        (GlobalAttributes
            { src : Attributes.Supported
            , crossorigin : Attributes.Supported
            , preload : Attributes.Supported
            , autoplay : Attributes.Supported
            , loop : Attributes.Supported
            , muted : Attributes.Supported
            , controls : Attributes.Supported
            }
        )
    -> List (Node { source : Supported } msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Supported } msg
audio1 attributes sources tracks contents =
    Node "video" (List.map toAttribute attributes) (List.map toHtml sources ++ List.map toHtml tracks ++ List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/track](https://html.spec.whatwg.org/multipage/media.html#the-track-element)
-}
track :
    List
        (GlobalAttributes
            { kind : Attributes.Supported
            , src : Attributes.Supported
            , srclang : Attributes.Supported
            , label : Attributes.Supported
            , default : Attributes.Supported
            }
        )
    -> Node { compatible | track : Supported } msg
track attributes =
    node "track" attributes []



{--MAPS https://html.spec.whatwg.org/multipage/image-maps.html--}


{-| Follows the element definition at [html.spec.whatwg.org/map](https://html.spec.whatwg.org/multipage/image-maps.html#the-map-element)
-}
map :
    List (GlobalAttributes { name : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | map : Supported } msg
map =
    node "map"


{-| Follows the element definition at [html.spec.whatwg.org/area](https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element)
-}
area :
    List
        (GlobalAttributes
            { alt : Attributes.Supported
            , coords : Attributes.Supported
            , shape : Attributes.Supported
            , href : Attributes.Supported
            , target : Attributes.Supported
            , download : Attributes.Supported
            , ping : Attributes.Supported
            , rel : Attributes.Supported
            , referrerpolicy : Attributes.Supported
            }
        )
    -> Node { compatible | area : Supported } msg
area attributes =
    node "area" attributes []



{--TABULAR https://html.spec.whatwg.org/multipage/tables.html --}


{-| Defines the allowed descendants of a table excluding the tbody
-}
type alias TableContents msg =
    { caption : Maybe (VirtualDom.Node msg)
    , colgroups : List (VirtualDom.Node msg)
    , thead : Maybe (VirtualDom.Node msg)
    , tfoot : Maybe (VirtualDom.Node msg)
    }


{-| The Type that is passed around the table pipeline
-}
type Table msg
    = Table (List (GlobalAttributes {})) (TableContents msg)


{-| Follows the element definition at [html.spec.whatwg.org/table](https://html.spec.whatwg.org/multipage/tables.html#the-table-element)
-}
table : List (GlobalAttributes {}) -> Table msg
table attributes =
    Table attributes (TableContents Nothing [] Nothing Nothing)


{-| Follows the element definition at [html.spec.whatwg.org/caption](https://html.spec.whatwg.org/multipage/tables.html#the-caption-element)
-}
caption : List (GlobalAttributes {}) -> List (Node FlowContent msg) -> Table msg -> Table msg
caption attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | caption = Just (VirtualDom.node "caption" (List.map toAttribute attributes) (List.map toHtml contents))
        }


{-| Follows the element definition at [html.spec.whatwg.org/colgroup](https://html.spec.whatwg.org/multipage/tables.html#the-colgroup-element)
-}
colgroup :
    List (GlobalAttributes { span : Attributes.Supported })
    -> List (Node { col : Supported } msg)
    -> Table msg
    -> Table msg
colgroup attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | colgroups = tableContents.colgroups ++ [ VirtualDom.node "colgroup" (List.map toAttribute attributes) (List.map toHtml contents) ]
        }


{-| Follows the element definition at [html.spec.whatwg.org/col](https://html.spec.whatwg.org/multipage/tables.html#the-col-element)
-}
col : List (GlobalAttributes { span : Attributes.Supported }) -> Node { compatible | col : Supported } msg
col attributes =
    node "col" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/thead](https://html.spec.whatwg.org/multipage/tables.html#the-thead-element)
-}
thead : List (GlobalAttributes {}) -> List (Node { tr : Supported } msg) -> Table msg -> Table msg
thead attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | thead = Just (VirtualDom.node "thead" (List.map toAttribute attributes) (List.map toHtml contents))
        }


{-| Follows the element definition at [html.spec.whatwg.org/tfoot](https://html.spec.whatwg.org/multipage/tables.html#the-tfoot-element)
-}
tfoot : List (GlobalAttributes {}) -> List (Node { tr : Supported } msg) -> Table msg -> Table msg
tfoot attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | tfoot = Just (VirtualDom.node "tfoot" (List.map toAttribute attributes) (List.map toHtml contents))
        }


{-| Follows the element definition at [html.spec.whatwg.org/tbody](https://html.spec.whatwg.org/multipage/tables.html#the-tbody-element)
-}
tbody : List (GlobalAttributes {}) -> List (Node { tr : Supported } msg) -> Table msg -> Node { compatible | table : Supported } msg
tbody attributes rows (Table tableAttributes contents) =
    Node "table"
        (List.map toAttribute tableAttributes)
        (maybeVirutalNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirutalNodeToList contents.thead
            ++ [ VirtualDom.node "tbody" (List.map toAttribute attributes) (List.map toHtml rows) ]
            ++ maybeVirutalNodeToList contents.tfoot
        )


{-| Follows the element definition at [html.spec.whatwg.org/tr](https://html.spec.whatwg.org/multipage/tables.html#the-tr-element)
-}
trbody : List (Node { tr : Supported } msg) -> Table msg -> Node { compatible | table : Supported } msg
trbody rows (Table tableAttributes contents) =
    Node "table"
        (List.map toAttribute tableAttributes)
        (maybeVirutalNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirutalNodeToList contents.thead
            ++ List.map toHtml rows
            ++ maybeVirutalNodeToList contents.tfoot
        )


{-| Follows the element definition at [html.spec.whatwg.org/tr](https://html.spec.whatwg.org/multipage/tables.html#the-tr-element)
-}
tr : List (GlobalAttributes {}) -> List (Node { td : Supported, th : Supported } msg) -> Node { compatible | tr : Supported } msg
tr =
    node "tr"


{-| Follows the element definition at [html.spec.whatwg.org/td](https://html.spec.whatwg.org/multipage/tables.html#the-td-element)
-}
td :
    List
        (GlobalAttributes
            { colspan : Attributes.Supported
            , rowspan : Attributes.Supported
            , headers : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | td : Supported } msg
td =
    node "td"



{----}


{-| Follows the element definition at [html.spec.whatwg.org/th](https://html.spec.whatwg.org/multipage/tables.html#the-th-element)
Content model: _Excludes header, footer, sectioning content, heading content_
-}
th :
    List
        (GlobalAttributes
            { colspan : Attributes.Supported
            , rowspan : Attributes.Supported
            , headers : Attributes.Supported
            , scope : Attributes.Supported
            , abbr : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | th : Supported } msg
th =
    node "th"



{--FORMS https://html.spec.whatwg.org/multipage/forms.html --}


{-| Follows the element definition at [html.spec.whatwg.org/form](https://html.spec.whatwg.org/multipage/forms.html#the-form-element)
Content model: _Excludes form_
-}
form :
    List
        (GlobalAttributes
            { acceptcharset : Attributes.Supported
            , action : Attributes.Supported
            , autocomplete : Attributes.Supported
            , enctype : Attributes.Supported
            , method : Attributes.Supported
            , name : Attributes.Supported
            , novalidate : Attributes.Supported
            , target : Attributes.Supported
            , rel : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | form : Supported } msg
form =
    node "form"


{-| Follows the element definition at [html.spec.whatwg.org/label](https://html.spec.whatwg.org/multipage/forms.html#the-label-element)
-}
label :
    List (GlobalAttributes { for : Attributes.Supported })
    -> List (Node PhrasingContent msg)
    -> Node { compatible | label : Supported } msg
label =
    node "label"



{--INPUTS https://html.spec.whatwg.org/multipage/input.html --}


{-| Follows the element definition at [html.spec.whatwg.org/input](https://html.spec.whatwg.org/multipage/input.html#the-input-element)
-}
input :
    List
        (GlobalAttributes
            { accept : Attributes.Supported
            , alt : Attributes.Supported
            , autocomplete : Attributes.Supported
            , checked : Attributes.Supported
            , dirname : Attributes.Supported
            , disabled : Attributes.Supported
            , form : Attributes.Supported
            , formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            , height : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , maxlength : Attributes.Supported
            , min : Attributes.Supported
            , minlength : Attributes.Supported
            , multiple : Attributes.Supported
            , name : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            , src : Attributes.Supported
            , step : Attributes.Supported
            , inputType : Attributes.Supported
            , value : Attributes.Supported
            , width : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
input attributes =
    node "input" attributes []


{-| Follows the element definition at [html.spec.whatwg.org/hidden](https://html.spec.whatwg.org/multipage/input.html#hidden-state-(type=hidden))
-}
hidden : List (GlobalAttributes { autocomplete : Attributes.Supported }) -> Node { compatible | input : Supported } msg
hidden attributes =
    node "input" (Attributes.Attribute "type" "hidden" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/text](https://html.spec.whatwg.org/multipage/input.html#text-(type=text)-state-and-search-state-(type=search))
-}
textInput :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , dirname : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
textInput attributes =
    node "input" (Attributes.Attribute "type" "text" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/search](https://html.spec.whatwg.org/multipage/input.html#text-(type=text)-state-and-search-state-(type=search))
-}
search :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , dirname : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
search attributes =
    node "input" (Attributes.Attribute "type" "search" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/url](https://html.spec.whatwg.org/multipage/input.html#url-state-(type=url))
-}
url :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
url attributes =
    node "input" (Attributes.Attribute "type" "url" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/tel](https://html.spec.whatwg.org/multipage/input.html#telephone-state-(type=tel))
-}
tel :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
tel attributes =
    node "input" (Attributes.Attribute "type" "tel" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/email](https://html.spec.whatwg.org/multipage/input.html#e-mail-state-(type=email))
-}
email :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , multiple : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
email attributes =
    node "input" (Attributes.Attribute "type" "email" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/password](https://html.spec.whatwg.org/multipage/input.html#password-state-(type=password))
-}
password :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , pattern : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
password attributes =
    node "input" (Attributes.Attribute "type" "password" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/date](https://html.spec.whatwg.org/multipage/input.html#date-state-(type=date))
-}
date :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
date attributes =
    node "input" (Attributes.Attribute "type" "date" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/month](https://html.spec.whatwg.org/multipage/input.html#month-state-(type=month))
-}
month :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
month attributes =
    node "input" (Attributes.Attribute "type" "month" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/week](https://html.spec.whatwg.org/multipage/input.html#week-state-(type=week))
-}
week :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
week attributes =
    node "input" (Attributes.Attribute "type" "week" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/time](https://html.spec.whatwg.org/multipage/input.html#time-state-(type=time))
-}
timeInput :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
timeInput attributes =
    node "input" (Attributes.Attribute "type" "time" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/datetime](https://html.spec.whatwg.org/multipage/input.html#local-date-and-time-state-(type=datetime-local))
-}
datetime :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
datetime attributes =
    node "input" (Attributes.Attribute "type" "datetime-local" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/number](https://html.spec.whatwg.org/multipage/input.html#number-state-(type=number))
-}
number :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
number attributes =
    node "input" (Attributes.Attribute "type" "number" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/range](https://html.spec.whatwg.org/multipage/input.html#range-state-(type=range))
-}
range :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            , max : Attributes.Supported
            , min : Attributes.Supported
            , step : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
range attributes =
    node "input" (Attributes.Attribute "type" "range" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/color](https://html.spec.whatwg.org/multipage/input.html#color-state-(type=color))
-}
color :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , list : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
color attributes =
    node "input" (Attributes.Attribute "type" "color" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/checkbox](https://html.spec.whatwg.org/multipage/input.html#checkbox-state-(type=checkbox))
-}
checkbox :
    List
        (GlobalAttributes
            { checked : Attributes.Supported
            , required : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
checkbox attributes =
    node "input" (Attributes.Attribute "type" "checkbox" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/radio](https://html.spec.whatwg.org/multipage/input.html#radio-button-state-(type=radio))
-}
radio :
    List
        (GlobalAttributes
            { checked : Attributes.Supported
            , required : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
radio attributes =
    node "input" (Attributes.Attribute "type" "radio" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/file](https://html.spec.whatwg.org/multipage/input.html#file-upload-state-(type=file))
-}
file :
    List
        (GlobalAttributes
            { accept : Attributes.Supported
            , multiple : Attributes.Supported
            , required : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
file attributes =
    node "input" (Attributes.Attribute "type" "file" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/submit](https://html.spec.whatwg.org/multipage/input.html#submit-button-state-(type=submit))
-}
submit :
    List
        (GlobalAttributes
            { formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
submit attributes =
    node "input" (Attributes.Attribute "type" "submit" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/image](https://html.spec.whatwg.org/multipage/input.html#image-button-state-(type=image))
-}
imageButton :
    List
        (GlobalAttributes
            { alt : Attributes.Supported
            , formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            , height : Attributes.Supported
            , src : Attributes.Supported
            , width : Attributes.Supported
            }
        )
    -> Node { compatible | input : Supported } msg
imageButton attributes =
    node "input" (Attributes.Attribute "type" "image" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/reset](https://html.spec.whatwg.org/multipage/input.html#reset-button-state-(type=reset))
-}
resetButton : List (GlobalAttributes {}) -> Node { compatible | input : Supported } msg
resetButton attributes =
    node "input" (Attributes.Attribute "type" "reset" :: attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/button](https://html.spec.whatwg.org/multipage/input.html#button-state-(type=button))
-}
buttonInput : List (GlobalAttributes {}) -> Node { compatible | input : Supported } msg
buttonInput attributes =
    node "input" (Attributes.Attribute "type" "button" :: attributes) []



{--FORM ELEMENTS https://html.spec.whatwg.org/multipage/form-elements.html --}


{-| Follows the element definition at [html.spec.whatwg.org/button](https://html.spec.whatwg.org/multipage/form-elements.html#the-button-element)
-}
button :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , form : Attributes.Supported
            , formaction : Attributes.Supported
            , formenctype : Attributes.Supported
            , formmethod : Attributes.Supported
            , formnovalidate : Attributes.Supported
            , formtarget : Attributes.Supported
            , name : Attributes.Supported
            , buttonType : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | button : Supported } msg
button =
    node "button"


{-| Follows the element definition at [html.spec.whatwg.org/select](https://html.spec.whatwg.org/multipage/form-elements.html#the-select-element)
-}
select :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , disabled : Attributes.Supported
            , form : Attributes.Supported
            , multiple : Attributes.Supported
            , name : Attributes.Supported
            , required : Attributes.Supported
            , size : Attributes.Supported
            }
        )
    -> List (Node { option : Supported, optgroup : Supported } msg)
    -> Node { compatible | select : Supported } msg
select =
    node "select"


{-| Follows the element definition at [html.spec.whatwg.org/optgroup](https://html.spec.whatwg.org/multipage/form-elements.html#the-optgroup-element)
-}
optgroup :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , label : Attributes.Supported
            }
        )
    -> List (Node { option : Supported } msg)
    -> Node { compatible | optgroup : Supported } msg
optgroup =
    node "optgroup"


{-| Follows the element definition at [html.spec.whatwg.org/datalist](https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element)
-}
datalist : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | datalist : Supported } msg
datalist =
    node "datalist"


{-| Follows the element definition at [html.spec.whatwg.org/datalist](https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element)
-}
datalist1 : List (GlobalAttributes {}) -> List (Node { option : Supported } msg) -> Node { compatible | datalist : Supported } msg
datalist1 =
    node "datalist"


{-| Follows the element definition at [html.spec.whatwg.org/option](https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element)
-}
option :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , selected : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> String
    -> Node { compatible | option : Supported } msg
option attributes contents =
    Node "option" (List.map toAttribute attributes) [ VirtualDom.text contents ]


{-| Follows the element definition at [html.spec.whatwg.org/option](https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element)
-}
optionLabelled :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , selected : Attributes.Supported
            , value : Attributes.Supported
            }
        )
    -> String
    -> Node { compatible | option : Supported } msg
optionLabelled attributes contents =
    Node "option" (VirtualDom.attribute "label" contents :: List.map toAttribute attributes) []


{-| Follows the element definition at [html.spec.whatwg.org/textarea](https://html.spec.whatwg.org/multipage/form-elements.html#the-textarea-element)
-}
textarea :
    List
        (GlobalAttributes
            { autocomplete : Attributes.Supported
            , cols : Attributes.Supported
            , dirname : Attributes.Supported
            , disabled : Attributes.Supported
            , form : Attributes.Supported
            , maxlength : Attributes.Supported
            , minlength : Attributes.Supported
            , name : Attributes.Supported
            , placeholder : Attributes.Supported
            , readonly : Attributes.Supported
            , required : Attributes.Supported
            , rows : Attributes.Supported
            , wrap : Attributes.Supported
            }
        )
    -> String
    -> Node { compatible | textarea : Supported } msg
textarea attributes contents =
    Node "textarea" (List.map toAttribute attributes) [ VirtualDom.text contents ]


{-| Follows the element definition at [html.spec.whatwg.org/output](https://html.spec.whatwg.org/multipage/form-elements.html#the-output-element)
-}
output :
    List
        (GlobalAttributes
            { for : Attributes.Supported
            , form : Attributes.Supported
            , name : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | output : Supported } msg
output =
    node "output"


{-| Follows the element definition at [html.spec.whatwg.org/progress](https://html.spec.whatwg.org/multipage/form-elements.html#the-progress-element)
-}
progress :
    List
        (GlobalAttributes
            { ordinalValue : Attributes.Supported
            , max : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | progress : Supported } msg
progress =
    node "progress"


{-| Follows the element definition at [html.spec.whatwg.org/meter](https://html.spec.whatwg.org/multipage/form-elements.html#the-meter-element)
-}
meter :
    List
        (GlobalAttributes
            { ordinalValue : Attributes.Supported
            , min : Attributes.Supported
            , max : Attributes.Supported
            , low : Attributes.Supported
            , high : Attributes.Supported
            , optimum : Attributes.Supported
            }
        )
    -> List (Node PhrasingContent msg)
    -> Node { compatible | meter : Supported } msg
meter =
    node "meter"


{-| Follows the element definition at [html.spec.whatwg.org/fieldset](https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element)
-}
fieldset :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , form : Attributes.Supported
            , name : Attributes.Supported
            }
        )
    -> List (Node FlowContent msg)
    -> Node { compatible | fieldset : Supported } msg
fieldset =
    node "fieldset"


{-| Follows the element definition at [html.spec.whatwg.org/fieldset](https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element)
-}
fieldset1 :
    List
        (GlobalAttributes
            { disabled : Attributes.Supported
            , form : Attributes.Supported
            , name : Attributes.Supported
            }
        )
    -> Node { legend : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | fieldset : Supported } msg
fieldset1 attributes legendNode contents =
    Node "fieldset" (List.map toAttribute attributes) (toHtml legendNode :: List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/legend](https://html.spec.whatwg.org/multipage/form-elements.html#the-legend-element)
-}
legend : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | legend : Supported } msg
legend =
    node "legend"



{--INTERACTIVE https://html.spec.whatwg.org/multipage/interactive-elements.html --}


{-| Follows the element definition at [html.spec.whatwg.org/details](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-details-element)
-}
details :
    List (GlobalAttributes { open : Attributes.Supported })
    -> Node { summary : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | details : Supported } msg
details attributes summaryNode contents =
    Node "details" (List.map toAttribute attributes) (toHtml summaryNode :: List.map toHtml contents)


{-| Follows the element definition at [html.spec.whatwg.org/summary](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-summary-element)
-}
summary : List (GlobalAttributes {}) -> List (Node PhrasingContent msg) -> Node { compatible | summary : Supported } msg
summary =
    node "summary"


{-| Follows the element definition at [html.spec.whatwg.org/summary](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-summary-element)
-}
summaryHeader : List (GlobalAttributes {}) -> Node HeadingContent msg -> Node { compatible | summary : Supported } msg
summaryHeader attributes headingNode =
    Node "summary" (List.map toAttribute attributes) [ toHtml headingNode ]


{-| Follows the element definition at [html.spec.whatwg.org/dialog](https://html.spec.whatwg.org/multipage/interactive-elements.html#the-dialog-element)
-}
dialog :
    List (GlobalAttributes { open : Attributes.Supported })
    -> List (Node FlowContent msg)
    -> Node { compatible | dialog : Supported } msg
dialog =
    node "dialog"


maybeVirutalNodeToList : Maybe (VirtualDom.Node msg) -> List (VirtualDom.Node msg)
maybeVirutalNodeToList maybeNode =
    case maybeNode of
        Just n ->
            [ n ]

        Nothing ->
            []


maybeNodeToList : Maybe (Node a msg) -> List (VirtualDom.Node msg)
maybeNodeToList maybeNode =
    case maybeNode of
        Just n ->
            [ toHtml n ]

        Nothing ->
            []


node : String -> List (Attributes.Attribute a) -> List (Node b msg) -> Node c msg
node tagName attributes nodes =
    Node tagName (List.map toAttribute attributes) (List.map toHtml nodes)


toAttribute : Attributes.Attribute a -> VirtualDom.Attribute msg
toAttribute (Attributes.Attribute name value) =
    VirtualDom.attribute name value


{-| Function that allows converting the internal [Node](#Node) structure to VirtualDom.Node. This only needs to be done on the root element since ancestors are automatically converted as they are processed.

    W3.Html.div [] [ W3.Html.a [] [] ] |> W3.Html.toHtml

-}
toHtml : Node a msg -> VirtualDom.Node msg
toHtml (Node tagName attributes contents) =
    VirtualDom.node tagName attributes contents
