module Wai.Role.Abstract.Landmark exposing (Attribute, RoleAttribute)

import Wai.Role.Banner as Banner
import Wai.Role.Complementary as Complementary
import Wai.Role.ContentInfo as ContentInfo
import Wai.Role.Form as Form
import Wai.Role.Help as Wai
import Wai.Role.Main as Main
import Wai.Role.Navigation as Navigation
import Wai.Role.Region as Region
import Wai.Role.Search as Search


type alias RoleAttribute a =
    { a
        | landmark : Wai.Compatible
    }


type alias Attribute a =
    RoleAttribute (Banner.Attribute (Complementary.Attribute (ContentInfo.Attribute (Form.Attribute (Main.Attribute (Navigation.Attribute (Region.Attribute (Search.Attribute a))))))))
