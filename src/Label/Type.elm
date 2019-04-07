module Label.Type exposing (Label(..))

import Wai.IdReference exposing (IdReference)


type Label
    = Custom
    | Text Bool String
    | AriaLabel String
    | AriaLabelledBy (List IdReference)
