module Wai.Button exposing
    ( button, buttonWith, settings, describedby, enable, disable
    , toggleButton, toggleSettings, on, off
    , menuButton, listBoxButton, treeButton, gridButton, dialogButton, popupSettings, opened, closed
    )

{-| UI component based on WAI's [button](https://www.w3.org/TR/wai-aria-practices-1.1/#button) reccomendations


# Button

@docs button, buttonWith, settings, describedby, enable, disable


# Toggle button

@docs toggleButton, toggleSettings, on, off


# Popup button

@docs menuButton, listBoxButton, treeButton, gridButton, dialogButton, popupSettings, opened, closed

-}

import Html
import Wai.Aria as Aria
import Wai.IdReference exposing (IdReference)
import Wai.Label.Help as LabelHelp
import Wai.Label.Type exposing (Label)
import Wai.Token.HasPopup as HasPopup
import Wai.TriState


{-| -}
button : Label -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
button label attributes body =
    let
        ( attributesWithLabel, bodyWithLabel ) =
            LabelHelp.apply label ( attributes, body )
    in
    Html.button attributesWithLabel bodyWithLabel


{-| -}
buttonWith : Settings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
buttonWith buttonSettings attributes body =
    let
        ( attributesWithSettings, bodyWithSettings ) =
            applyButtonSettings buttonSettings ( attributes, body )
    in
    Html.button attributesWithSettings bodyWithSettings


{-| -}
settings : Label -> Settings
settings label =
    { label = label, describedBy = [], enabled = True }


{-| -}
describedby : List IdReference -> Settings -> Settings
describedby ids buttonSettings =
    { buttonSettings | describedBy = ids }


{-| -}
enable : Settings -> Settings
enable buttonSettings =
    { buttonSettings | enabled = True }


{-| -}
disable : Settings -> Settings
disable buttonSettings =
    { buttonSettings | enabled = False }


{-| -}
toggleButton : ToggleSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
toggleButton buttonSettings attributes body =
    let
        ( attributesWithSettings, bodyWithSettings ) =
            applyToggleButtonSettings buttonSettings ( attributes, body )
    in
    Html.button attributesWithSettings bodyWithSettings


{-| -}
toggleSettings : Label -> Pressed -> ToggleSettings
toggleSettings label pressed =
    let
        baseButtonSettings =
            settings label
    in
    { label = baseButtonSettings.label
    , describedBy = baseButtonSettings.describedBy
    , enabled = baseButtonSettings.enabled
    , pressed = pressed
    }


{-| -}
on : Pressed
on =
    On


{-| -}
off : Pressed
off =
    Off


{-| -}
menuButton : PopupSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
menuButton =
    buttonHasPopup Menu


{-| -}
listBoxButton : PopupSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
listBoxButton =
    buttonHasPopup ListBox


{-| -}
treeButton : PopupSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
treeButton =
    buttonHasPopup Tree


{-| -}
gridButton : PopupSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
gridButton =
    buttonHasPopup Grid


{-| -}
dialogButton : PopupSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
dialogButton =
    buttonHasPopup Dialog


buttonHasPopup : HasPopup -> PopupSettings -> List (Html.Attribute a) -> List (Html.Html a) -> Html.Html a
buttonHasPopup hasPopup buttonSettings attributes body =
    let
        ( attributesWithSettings, bodyWithSettings ) =
            applyMenuButtonSettings hasPopup buttonSettings ( attributes, body )
    in
    Html.button attributesWithSettings bodyWithSettings


{-| -}
popupSettings : Label -> Expanded -> List IdReference -> PopupSettings
popupSettings label isOpened controls =
    let
        baseButtonSettings =
            settings label
    in
    { label = baseButtonSettings.label
    , describedBy = baseButtonSettings.describedBy
    , enabled = baseButtonSettings.enabled
    , opened = isOpened
    , controls = controls
    }


{-| -}
opened : Expanded
opened =
    Opened


{-| -}
closed : Expanded
closed =
    Closed


applyButtonSettings : Settings -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyButtonSettings { label, describedBy, enabled } ( attributes, body ) =
    ( attributes, body )
        |> LabelHelp.apply label
        |> applyDescribedBy describedBy
        |> applyEnabled enabled


type alias Settings =
    { label : Label
    , describedBy : List IdReference
    , enabled : Bool
    }


applyToggleButtonSettings : ToggleSettings -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyToggleButtonSettings buttonSettings ( attributes, body ) =
    ( attributes, body )
        |> LabelHelp.apply buttonSettings.label
        |> applyDescribedBy buttonSettings.describedBy
        |> applyEnabled buttonSettings.enabled
        |> applyPressed buttonSettings.pressed


type alias ToggleSettingsBase a =
    { a
        | pressed : Pressed
    }


type alias ToggleSettings =
    ToggleSettingsBase Settings


applyMenuButtonSettings : HasPopup -> PopupSettings -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyMenuButtonSettings hasPopup buttonSettings ( attributes, body ) =
    ( attributes, body )
        |> LabelHelp.apply buttonSettings.label
        |> applyDescribedBy buttonSettings.describedBy
        |> applyEnabled buttonSettings.enabled
        |> applyHasPopup hasPopup
        |> applyOpened buttonSettings.opened
        |> applyControls buttonSettings.controls


type alias PopupSettingsBase a =
    { a
        | opened : Expanded
        , controls : List IdReference
    }


type alias PopupSettings =
    PopupSettingsBase Settings


applyDescribedBy : List IdReference -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyDescribedBy ids ( attributes, body ) =
    if List.isEmpty ids then
        ( attributes, body )

    else
        ( attributes ++ [ Aria.describedBy ids ], body )


applyEnabled : Bool -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyEnabled isEnabled ( attributes, body ) =
    if isEnabled then
        ( attributes, body )

    else
        ( attributes ++ [ Aria.disabled True ], body )


applyPressed : Pressed -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyPressed isPressed ( attributes, body ) =
    let
        pressedState =
            case isPressed of
                On ->
                    Wai.TriState.true

                Off ->
                    Wai.TriState.false
    in
    ( attributes ++ [ Aria.pressed pressedState ], body )


type Pressed
    = On
    | Off


applyHasPopup : HasPopup -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyHasPopup hasPopup ( attributes, body ) =
    let
        hasPopupAttribute =
            case hasPopup of
                Menu ->
                    HasPopup.menu

                ListBox ->
                    HasPopup.listbox

                Tree ->
                    HasPopup.tree

                Grid ->
                    HasPopup.grid

                Dialog ->
                    HasPopup.dialog
    in
    ( attributes ++ [ Aria.hasPopup hasPopupAttribute ], body )


type HasPopup
    = Menu
    | ListBox
    | Tree
    | Grid
    | Dialog


applyOpened : Expanded -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyOpened isOpened ( attributes, body ) =
    let
        expandedState =
            case isOpened of
                Opened ->
                    Just True

                Closed ->
                    Just False
    in
    ( attributes ++ [ Aria.expanded expandedState ], body )


type Expanded
    = Opened
    | Closed


applyControls : List IdReference -> ( List (Html.Attribute a), List (Html.Html a) ) -> ( List (Html.Attribute a), List (Html.Html a) )
applyControls ids ( attributes, body ) =
    if List.isEmpty ids then
        ( attributes, body )

    else
        ( attributes ++ [ Aria.controls ids ], body )
