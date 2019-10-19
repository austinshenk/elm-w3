module W3.Html exposing (Node, blockquote, dataDiv, dd, div, dl, dl1, dt, figcaption, figure, figure1, figure2, hr, li, menu, ol, p, pre, toHtml, ul)

import Set exposing (Set)
import VirtualDom


type Attribute a
    = Attribute String String


values : String -> List String -> Attribute a
values key =
    Attribute key << String.join " "


uniqueValues : String -> Set String -> Attribute a
uniqueValues key =
    Attribute key << setToString


setToString : Set String -> String
setToString set =
    set |> Set.toList |> String.join " "


type Node nodes msg
    = Node String (List (VirtualDom.Attribute msg)) (List (VirtualDom.Node msg))


type Supported
    = Supported


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


type alias HeadingContent =
    { h1 : Supported
    , h2 : Supported
    , h3 : Supported
    , h4 : Supported
    , h5 : Supported
    , h6 : Supported
    , hgroup : Supported
    }


type alias SectioningContent =
    { article : Supported
    , aside : Supported
    , nav : Supported
    , section : Supported
    }


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


type alias MetadataContent =
    { base : Supported
    , link : Supported
    , meta : Supported
    , noscript : Supported
    , script : Supported
    , style : Supported
    , template : Supported
    , title : Supported
    }



{--SECTIONS https://html.spec.whatwg.org/multipage/sections.html --}


article : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | article : Supported } msg
article =
    node "article"


section : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | section : Supported } msg
section =
    node "section"


nav : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | nav : Supported } msg
nav =
    node "nav"


aside : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | aside : Supported } msg
aside =
    node "aside"


h1 : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | h1 : Supported } msg
h1 =
    node "h1"


h2 : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | h2 : Supported } msg
h2 =
    node "h2"


h3 : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | h3 : Supported } msg
h3 =
    node "h3"


h4 : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | h4 : Supported } msg
h4 =
    node "h4"


h5 : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | h5 : Supported } msg
h5 =
    node "h5"


h6 : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | h6 : Supported } msg
h6 =
    node "h6"


hgroup :
    List (VirtualDom.Attribute msg)
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



{--Exclude header, footer descendant --}


header : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | header : Supported } msg
header =
    node "header"



{--Exclude header, footer descendant --}


footer : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | footer : Supported } msg
footer =
    node "footer"



{--Exclude heading content, sectioning content, header, footer, address descendant --}


address : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | address : Supported } msg
address =
    node "address"



{--GROUPING https://html.spec.whatwg.org/multipage/grouping-content.html --}


p : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | p : Supported } msg
p =
    node "p"


hr : List (VirtualDom.Attribute msg) -> Node { compatible | hr : Supported } msg
hr attributes =
    node "hr" attributes []


pre : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | pre : Supported } msg
pre =
    node "pre"


blockquote : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | blockquote : Supported } msg
blockquote =
    node "blockquote"


ol : List (VirtualDom.Attribute msg) -> List (Node { li : Supported } msg) -> Node { compatible | ol : Supported } msg
ol =
    node "ol"


ul : List (VirtualDom.Attribute msg) -> List (Node { li : Supported } msg) -> Node { compatible | ul : Supported } msg
ul =
    node "ul"


menu : List (VirtualDom.Attribute msg) -> List (Node { li : Supported } msg) -> Node { compatible | menu : Supported } msg
menu =
    node "menu"


li : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | li : Supported } msg
li =
    node "li"


dl : List (VirtualDom.Attribute msg) -> List (Node { dt : Supported, dd : Supported } msg) -> Node { compatible | dl : Supported } msg
dl =
    node "dl"


dl1 : List (VirtualDom.Attribute msg) -> List (Node { dataDiv : Supported } msg) -> Node { compatible | dl : Supported } msg
dl1 =
    node "dl"



{--Exclude heading content, sectioning content, header, footer descendant --}


dt : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | dt : Supported } msg
dt =
    node "dt"


dd : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | dd : Supported } msg
dd =
    node "dd"


figure :
    List (VirtualDom.Attribute msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Supported } msg
figure =
    node "figure"


figure1 :
    List (VirtualDom.Attribute msg)
    -> Node { figcaption : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | figure : Supported } msg
figure1 attributes figCaption nodes =
    Node "figure" attributes (toHtml figCaption :: List.map toHtml nodes)


figure2 :
    List (VirtualDom.Attribute msg)
    -> List (Node FlowContent msg)
    -> Node { figcaption : Supported } msg
    -> Node { compatible | figure : Supported } msg
figure2 attributes nodes figCaption =
    Node "figure" attributes (List.map toHtml nodes ++ [ toHtml figCaption ])


figcaption : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | figcaption : Supported } msg
figcaption =
    node "figcaption"


main_ : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | main_ : Supported } msg
main_ =
    node "main"


div : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | div : Supported } msg
div =
    node "div"


dataDiv : List (VirtualDom.Attribute msg) -> List (Node { dt : Supported, dd : Supported } msg) -> Node { compatible | dataDiv : Supported } msg
dataDiv =
    node "div"



{--TEXT LEVEL https://html.spec.whatwg.org/multipage/text-level-semantics.html --}


a : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | a : Supported } msg
a =
    node "a"


em : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | em : Supported } msg
em =
    node "em"


strong : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | strong : Supported } msg
strong =
    node "strong"


small : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | small : Supported } msg
small =
    node "small"


s : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | s : Supported } msg
s =
    node "s"


cite : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | cite : Supported } msg
cite =
    node "cite"


q : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | q : Supported } msg
q =
    node "q"



{--Exclude dfn descendant --}


dfn : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | dfn : Supported } msg
dfn =
    node "dfn"


abbr : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | abbr : Supported } msg
abbr =
    node "abbr"



{--Exclude ruby descendant --}


ruby : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | ruby : Supported } msg
ruby =
    node "ruby"


ruby1 : List (VirtualDom.Attribute msg) -> Node { ruby : Supported } msg -> Node { compatible | ruby1 : Supported } msg
ruby1 attributes rubyChild =
    Node "ruby" attributes [ toHtml rubyChild ]


ruby2 : List (VirtualDom.Attribute msg) -> List (Node { rt : Supported } msg) -> Node { compatible | ruby2 : Supported } msg
ruby2 =
    node "ruby"


ruby3 :
    List (VirtualDom.Attribute msg)
    -> Node { rp : Supported } msg
    -> List ( Node { rt : Supported } msg, Node { rp : Supported } msg )
    -> Node { compatible | ruby3 : Supported } msg
ruby3 attributes rpFirst rtrpTuples =
    Node "ruby" attributes (toHtml rpFirst :: List.foldl ruby3Help [] rtrpTuples)


ruby3Help :
    ( Node { rt : Supported } msg, Node { rp : Supported } msg )
    -> List (VirtualDom.Node msg)
    -> List (VirtualDom.Node msg)
ruby3Help tuple childrenSoFar =
    childrenSoFar ++ [ toHtml (Tuple.first tuple), toHtml (Tuple.second tuple) ]


rt : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | rt : Supported } msg
rt =
    node "rt"


rp : List (VirtualDom.Attribute msg) -> String -> Node { compatible | rp : Supported } msg
rp attributes content =
    Node "rp" attributes [ VirtualDom.text content ]


data : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | data : Supported } msg
data =
    node "data"


time : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | time : Supported } msg
time =
    node "time"


timeText : List (VirtualDom.Attribute msg) -> String -> Node { compatible | time : Supported } msg
timeText attributes content =
    Node "time" attributes [ VirtualDom.text content ]


code : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | code : Supported } msg
code =
    node "code"


var : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | var : Supported } msg
var =
    node "var"


samp : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | samp : Supported } msg
samp =
    node "samp"


kbd : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | kbd : Supported } msg
kbd =
    node "kbd"


sub : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | sub : Supported } msg
sub =
    node "sub"


sup : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | sup : Supported } msg
sup =
    node "sup"


i : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | i : Supported } msg
i =
    node "i"


b : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | b : Supported } msg
b =
    node "b"


u : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | u : Supported } msg
u =
    node "u"


mark : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | mark : Supported } msg
mark =
    node "mark"


bdi : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | bdi : Supported } msg
bdi =
    node "bdi"


bdo : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | bdo : Supported } msg
bdo =
    node "bdo"


span : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | span : Supported } msg
span =
    node "span"


br : List (VirtualDom.Attribute msg) -> Node { compatible | br : Supported } msg
br attributes =
    node "br" attributes []


wbr : List (VirtualDom.Attribute msg) -> Node { compatible | wbr : Supported } msg
wbr attributes =
    node "wbr" attributes []



{--EDITS https://html.spec.whatwg.org/multipage/edits.html --}


ins : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | ins : Supported } msg
ins =
    node "ins"


del : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | del : Supported } msg
del =
    node "del"



{--EMBEDDED CONTENT https://html.spec.whatwg.org/multipage/embedded-content.html --}


picture :
    List (VirtualDom.Attribute msg)
    -> List (Node { source : Supported } msg)
    -> Node { img : Supported } msg
    -> Node { compatible | picture : Supported } msg
picture attributes sources image =
    Node "picture" attributes (List.map toHtml sources ++ [ toHtml image ])


source : List (VirtualDom.Attribute msg) -> Node { compatible | source : Supported } msg
source attributes =
    node "source" attributes []


img : List (VirtualDom.Attribute msg) -> Node { compatible | img : Supported } msg
img attributes =
    node "img" attributes []



{--IFRAME EMBED https://html.spec.whatwg.org/multipage/iframe-embed-object.html --}


iframe : List (VirtualDom.Attribute msg) -> Node { compatible | iframe : Supported } msg
iframe attributes =
    node "iframe" attributes []


embed : List (VirtualDom.Attribute msg) -> Node { compatible | embed : Supported } msg
embed attributes =
    node "embed" attributes []


object :
    List (VirtualDom.Attribute msg)
    -> List (Node { param : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | object : Supported } msg
object attributes params contents =
    Node "object" attributes (List.map toHtml params ++ List.map toHtml contents)


param : List (VirtualDom.Attribute msg) -> Node { compatible | param : Supported } msg
param attributes =
    node "param" attributes []



{--MEDIA https://html.spec.whatwg.org/multipage/media.html--}


video :
    List (VirtualDom.Attribute msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Supported } msg
video attributes tracks contents =
    Node "video" attributes (List.map toHtml tracks ++ List.map toHtml contents)


video1 :
    List (VirtualDom.Attribute msg)
    -> List (Node { source : Supported } msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | video : Supported } msg
video1 attributes sources tracks contents =
    Node "video" attributes (List.map toHtml sources ++ List.map toHtml tracks ++ List.map toHtml contents)


audio :
    List (VirtualDom.Attribute msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Supported } msg
audio attributes tracks contents =
    Node "video" attributes (List.map toHtml tracks ++ List.map toHtml contents)


audio1 :
    List (VirtualDom.Attribute msg)
    -> List (Node { source : Supported } msg)
    -> List (Node { track : Supported } msg)
    -> List (Node FlowContent msg)
    -> Node { compatible | audio : Supported } msg
audio1 attributes sources tracks contents =
    Node "video" attributes (List.map toHtml sources ++ List.map toHtml tracks ++ List.map toHtml contents)


track : List (VirtualDom.Attribute msg) -> Node { compatible | track : Supported } msg
track attributes =
    node "track" attributes []



{--MAPS https://html.spec.whatwg.org/multipage/image-maps.html--}


map : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | map : Supported } msg
map =
    node "map"


area : List (VirtualDom.Attribute msg) -> Node { compatible | area : Supported } msg
area attributes =
    node "area" attributes []



{--TABULAR https://html.spec.whatwg.org/multipage/tables.html --}


type alias TableContents msg =
    { caption : Maybe (VirtualDom.Node msg)
    , colgroups : List (VirtualDom.Node msg)
    , thead : Maybe (VirtualDom.Node msg)
    , tfoot : Maybe (VirtualDom.Node msg)
    }


type Table msg
    = Table (List (VirtualDom.Attribute msg)) (TableContents msg)


table : List (VirtualDom.Attribute msg) -> Table msg
table attributes =
    Table attributes (TableContents Nothing [] Nothing Nothing)


caption : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Table msg -> Table msg
caption attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | caption = Just (VirtualDom.node "caption" attributes (List.map toHtml contents))
        }


colgroup : List (VirtualDom.Attribute msg) -> List (Node { col : Supported } msg) -> Table msg -> Table msg
colgroup attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | colgroups = tableContents.colgroups ++ [ VirtualDom.node "colgroup" attributes (List.map toHtml contents) ]
        }


col : List (VirtualDom.Attribute msg) -> Node { compatible | col : Supported } msg
col attributes =
    node "col" attributes []


thead : List (VirtualDom.Attribute msg) -> List (Node { tr : Supported } msg) -> Table msg -> Table msg
thead attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | thead = Just (VirtualDom.node "thead" attributes (List.map toHtml contents))
        }


tfoot : List (VirtualDom.Attribute msg) -> List (Node { tr : Supported } msg) -> Table msg -> Table msg
tfoot attributes contents (Table tableAttributes tableContents) =
    Table tableAttributes
        { tableContents
            | tfoot = Just (VirtualDom.node "tfoot" attributes (List.map toHtml contents))
        }


tbody : List (VirtualDom.Attribute msg) -> List (Node { tr : Supported } msg) -> Table msg -> Node { compatible | table : Supported } msg
tbody attributes rows (Table tableAttributes contents) =
    Node "table"
        tableAttributes
        (maybeVirutalNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirutalNodeToList contents.thead
            ++ [ VirtualDom.node "tbody" attributes (List.map toHtml rows) ]
            ++ maybeVirutalNodeToList contents.tfoot
        )


trbody : List (Node { tr : Supported } msg) -> Table msg -> Node { compatible | table : Supported } msg
trbody rows (Table tableAttributes contents) =
    Node "table"
        tableAttributes
        (maybeVirutalNodeToList contents.caption
            ++ contents.colgroups
            ++ maybeVirutalNodeToList contents.thead
            ++ List.map toHtml rows
            ++ maybeVirutalNodeToList contents.tfoot
        )


tr : List (VirtualDom.Attribute msg) -> List (Node { td : Supported, th : Supported } msg) -> Node { compatible | tr : Supported } msg
tr =
    node "tr"


td : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | td : Supported } msg
td =
    node "td"



{--Excluding header, footer, sectioning content, heading content--}


th : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | th : Supported } msg
th =
    node "th"



{--FORMS https://html.spec.whatwg.org/multipage/forms.html --}
{--Excluding form--}


form : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | form : Supported } msg
form =
    node "form"


label : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | label : Supported } msg
label =
    node "label"



{--INPUTS https://html.spec.whatwg.org/multipage/input.html --}


input : List (VirtualDom.Attribute msg) -> Node { compatible | input : Supported } msg
input attributes =
    node "input" attributes []



{--FORM ELEMENTS https://html.spec.whatwg.org/multipage/form-elements.html --}


button : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | button : Supported } msg
button =
    node "button"


select : List (VirtualDom.Attribute msg) -> List (Node { option : Supported, optgroup : Supported } msg) -> Node { compatible | select : Supported } msg
select =
    node "select"


optgroup : List (VirtualDom.Attribute msg) -> List (Node { option : Supported } msg) -> Node { compatible | optgroup : Supported } msg
optgroup =
    node "optgroup"


datalist : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | datalist : Supported } msg
datalist =
    node "datalist"


datalist1 : List (VirtualDom.Attribute msg) -> List (Node { option : Supported } msg) -> Node { compatible | datalist : Supported } msg
datalist1 =
    node "datalist"


option : List (VirtualDom.Attribute msg) -> String -> Node { compatible | option : Supported } msg
option attributes contents =
    Node "option" attributes [ VirtualDom.text contents ]


optionLabelled : List (VirtualDom.Attribute msg) -> String -> Node { compatible | option : Supported } msg
optionLabelled attributes contents =
    Node "option" (VirtualDom.attribute "label" contents :: attributes) []


textarea : List (VirtualDom.Attribute msg) -> String -> Node { compatible | textarea : Supported } msg
textarea attributes contents =
    Node "textarea" attributes [ VirtualDom.text contents ]


output : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | output : Supported } msg
output =
    node "output"


progress : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | progress : Supported } msg
progress =
    node "progress"


meter : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | meter : Supported } msg
meter =
    node "meter"


fieldset : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | fieldset : Supported } msg
fieldset =
    node "fieldset"


fieldset1 :
    List (VirtualDom.Attribute msg)
    -> Node { legend : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | fieldset : Supported } msg
fieldset1 attributes legendNode contents =
    Node "fieldset" attributes (toHtml legendNode :: List.map toHtml contents)


legend : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | legend : Supported } msg
legend =
    node "legend"



{--INTERACTIVE https://html.spec.whatwg.org/multipage/interactive-elements.html --}


details :
    List (VirtualDom.Attribute msg)
    -> Node { summary : Supported } msg
    -> List (Node FlowContent msg)
    -> Node { compatible | details : Supported } msg
details attributes summaryNode contents =
    Node "details" attributes (toHtml summaryNode :: List.map toHtml contents)


summary : List (VirtualDom.Attribute msg) -> List (Node PhrasingContent msg) -> Node { compatible | summary : Supported } msg
summary =
    node "summary"


summaryHeader : List (VirtualDom.Attribute msg) -> Node HeadingContent msg -> Node { compatible | summary : Supported } msg
summaryHeader attributes headingNode =
    Node "summary" attributes [ toHtml headingNode ]


dialog : List (VirtualDom.Attribute msg) -> List (Node FlowContent msg) -> Node { compatible | dialog : Supported } msg
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


node : String -> List (VirtualDom.Attribute msg) -> List (Node a msg) -> Node b msg
node tagName attributes nodes =
    Node tagName attributes (List.map toHtml nodes)


toHtml : Node a msg -> VirtualDom.Node msg
toHtml (Node tagName attributes contents) =
    VirtualDom.node tagName attributes contents
