module Models exposing (..)

import Activities.Models exposing (Activity)


type alias Model =
    { activities : List Activity
    }


initialModel : Model
initialModel =
    { activities = []
    }
