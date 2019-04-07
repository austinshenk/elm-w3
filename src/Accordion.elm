module Accordion exposing (Expanded, Heading, Panel, Region, accordion, closed, heading, opened, panel, panelSettings, region)

import Button
import Html exposing (Attribute, Html)
import Html.Attributes
import Label.Type exposing (Label)
import Wai.Aria as Aria



{- WAI-ARIA Accordion
   https://www.w3.org/TR/wai-aria-practices-1.1/#accordion
-}


type Panel a
    = Panel PanelSettings (Heading a) (Region a)


type Heading a
    = Heading Label (List (Attribute a)) (List (Html a))


type Region a
    = Region (List (Attribute a)) (List (Html a))


type alias PanelSettings =
    { id : String
    , expanded : Expanded
    }


type Expanded
    = Open
    | Close


panelSettings : String -> Expanded -> PanelSettings
panelSettings id expanded =
    { id = id, expanded = expanded }


opened : Expanded
opened =
    Open


closed : Expanded
closed =
    Close


type alias HeadingLevel =
    Int


accordion : HeadingLevel -> List (Attribute a) -> List (Panel a) -> Html a
accordion headingLevel attributes panels =
    let
        headingLevelPositive =
            if headingLevel < 1 then
                1

            else
                headingLevel

        mappedPanels =
            List.map
                (\p ->
                    panelToElement p headingLevelPositive
                )
                panels

        collectedPanels =
            List.foldl
                (\panelHtml htmlSoFar ->
                    htmlSoFar ++ panelHtml
                )
                []
                mappedPanels

        accordionAttributes =
            Aria.presentation :: attributes
    in
    Html.dl accordionAttributes collectedPanels


panelToElement : Panel a -> HeadingLevel -> List (Html a)
panelToElement p headingLevel =
    case p of
        Panel settings panelHeading panelRegion ->
            [ panelHeadingToElement panelHeading headingLevel settings
            , panelRegionToElement panelRegion settings
            ]


panelHeadingToElement : Heading a -> HeadingLevel -> PanelSettings -> Html a
panelHeadingToElement (Heading label attributes body) headingLevel settings =
    let
        expandedAttributes =
            case settings.expanded of
                Open ->
                    [ Aria.expanded (Just True), Aria.disabled True ]

                Close ->
                    [ Aria.expanded (Just False) ]

        buttonAttributes =
            [ Html.Attributes.attribute "id" (settings.id ++ "-heading"), Aria.controls [ settings.id ++ "-region" ] ] ++ expandedAttributes

        headingAttributes =
            [ Aria.heading, Aria.level headingLevel ] ++ attributes
    in
    Html.dt headingAttributes
        (Button.button label buttonAttributes [] :: body)


panelRegionToElement : Region a -> PanelSettings -> Html a
panelRegionToElement (Region attributes body) settings =
    let
        allAttrbutes =
            [ Aria.region, Html.Attributes.attribute "id" (settings.id ++ "-region"), Aria.labelledBy [ settings.id ++ "-heading" ] ] ++ attributes
    in
    Html.dd allAttrbutes body


panel : PanelSettings -> Heading a -> Region a -> Panel a
panel =
    Panel


heading : Label -> List (Attribute a) -> List (Html a) -> Heading a
heading =
    Heading


region : List (Attribute a) -> List (Html a) -> Region a
region =
    Region
