module Wai.Role.List exposing (Attribute, RoleAttribute)

import Wai.Role.Directory as Directory
import Wai.Role.Feed as Feed
import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | list : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Directory.Attribute (Feed.Attribute a))
