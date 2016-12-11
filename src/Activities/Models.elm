module Activities.Models exposing (..)


type alias Activity =
    { message : String
    , pillar : String
    , date : String
    , id : String
    }


new : Activity
new =
    { message = ""
    , pillar = ""
    , date = ""
    , id = ""
    }
