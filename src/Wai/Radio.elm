module Wai.Radio exposing
    ( radio, settings, ariaLabel, ariaLabelledBy
    , group, groupRadio
    )

{-| UI component based on WAI's [radio](https://www.w3.org/TR/wai-aria-practices-1.1/#radio) reccomendations


# Radio

@docs radio, settings, ariaLabel, ariaLabelledBy


# Group

@docs group, groupRadio

-}

import Html exposing (Attribute, Html)
import Html.Attributes
import Wai.Aria as Aria
import Wai.IdReference exposing (IdReference)
import Wai.Label.Help as LabelHelp
import Wai.Label.Type as LabelType exposing (Label(..))
import Wai.TriState


type GroupRadio a
    = GroupRadio Settings (List (Attribute a))


type GroupLabel
    = GroupLabel Label


type alias Settings =
    { label : Label
    , checked : Bool
    }


{-| -}
settings : Label -> Bool -> Settings
settings label checked =
    { label = label
    , checked = checked
    }


{-| -}
ariaLabel : String -> GroupLabel
ariaLabel label =
    GroupLabel (LabelType.AriaLabel label)


{-| -}
ariaLabelledBy : List IdReference -> GroupLabel
ariaLabelledBy idReferences =
    GroupLabel (LabelType.AriaLabelledBy idReferences)


{-| -}
group : GroupLabel -> List (Attribute a) -> List (GroupRadio a) -> Html a
group groupLabel attributes radios =
    let
        ( groupAttributes, groupBody ) =
            ( [ Aria.group ], List.map groupRadioToHtml radios )
                |> LabelHelp.apply (groupLabelToLabel groupLabel)
    in
    Html.div (attributes ++ groupAttributes) groupBody


groupLabelToLabel : GroupLabel -> Label
groupLabelToLabel (GroupLabel label) =
    label


groupRadioToHtml : GroupRadio a -> Html a
groupRadioToHtml (GroupRadio radioSettings attributes) =
    radio radioSettings attributes


{-| -}
groupRadio : Settings -> List (Attribute a) -> GroupRadio a
groupRadio =
    GroupRadio


{-| -}
radio : Settings -> List (Attribute a) -> Html a
radio radioSettings attributes =
    let
        checkedAttribute =
            if radioSettings.checked then
                Aria.checked Wai.TriState.true

            else
                Aria.checked Wai.TriState.false

        ( radioAttrbutes, radioBody ) =
            ( [ Html.Attributes.attribute "type" "radio", checkedAttribute ], [] )
                |> LabelHelp.apply radioSettings.label
    in
    Html.input (attributes ++ radioAttrbutes) radioBody
