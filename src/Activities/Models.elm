module Activities.Models exposing (..)


type alias Activity =
    { message : String
    , pillar : String
    , date : String
    , id : Int
    }


new : Activity
new =
    { message = ""
    , pillar = ""
    , date = ""
    , id = 0
    }
