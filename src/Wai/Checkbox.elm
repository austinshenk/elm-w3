module Wai.Checkbox exposing
    ( checkbox, checkboxSettings, ariaLabel, ariaLabelledBy
    , group, groupCheckbox
    )

{-| UI component based on WAI's [checkbox](https://www.w3.org/TR/wai-aria-practices-1.1/#checkbox) reccomendations


# Checkbox

@docs checkbox, checkboxSettings, ariaLabel, ariaLabelledBy


# Group

@docs group, groupCheckbox

-}

import Html exposing (Attribute, Html)
import Html.Attributes
import Wai.Aria as Aria
import Wai.IdReference exposing (IdReference)
import Wai.Label.Help as LabelHelp
import Wai.Label.Type as LabelType exposing (Label)
import Wai.TriState


type GroupedCheckbox a
    = GroupedCheckbox CheckboxSettings (List (Attribute a))


type GroupLabel
    = GroupLabel Label


type alias CheckboxSettings =
    { label : Label
    , checked : Bool
    }


{-| -}
checkboxSettings : Label -> Bool -> CheckboxSettings
checkboxSettings label checked =
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
group : GroupLabel -> List (Attribute a) -> List (GroupedCheckbox a) -> Html a
group groupLabel attributes checkboxes =
    let
        ( groupAttributes, groupBody ) =
            ( [ Aria.group ], List.map groupedCheckboxToElement checkboxes )
                |> LabelHelp.apply (groupLabelToLabel groupLabel)
    in
    Html.div (attributes ++ groupAttributes) groupBody


groupLabelToLabel : GroupLabel -> Label
groupLabelToLabel (GroupLabel label) =
    label


groupedCheckboxToElement : GroupedCheckbox a -> Html a
groupedCheckboxToElement (GroupedCheckbox settings attributes) =
    checkbox settings attributes


{-| -}
groupCheckbox : CheckboxSettings -> List (Attribute a) -> GroupedCheckbox a
groupCheckbox =
    GroupedCheckbox


{-| -}
checkbox : CheckboxSettings -> List (Attribute a) -> Html a
checkbox settings attributes =
    let
        checkedAttribute =
            if settings.checked then
                Aria.checked Wai.TriState.true

            else
                Aria.checked Wai.TriState.false

        ( checkboxAttrbutes, checkboxBody ) =
            ( [ Html.Attributes.attribute "type" "checkbox", checkedAttribute ], [] )
                |> LabelHelp.apply settings.label
    in
    Html.input (attributes ++ checkboxAttrbutes) checkboxBody
