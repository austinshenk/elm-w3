module Wai.Role.Document exposing (Attribute, RoleAttribute, attribute)

import Wai.Role.Article as Article
import Wai.Role.Help as Wai


type alias RoleAttribute a =
    { a
        | document : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Article.Attribute a)


attribute : String -> String -> Wai.Attribute (Attribute {})
attribute name value =
    Wai.Attribute name
        value
        { document = Wai.Compatible
        , article = Wai.Compatible
        }
