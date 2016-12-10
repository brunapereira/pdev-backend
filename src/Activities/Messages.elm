module Activities.Messages exposing (..)

import Http
import Activities.Models exposing (Activity)


type Msg
    = OnFetchAll (Result Http.Error (List Activity))
