module Activities.Commands exposing (..)

import Http
import Json.Decode exposing (..)
import Activities.Models exposing (Activity)
import Activities.Messages exposing (..)


fetchAll : Cmd Msg
fetchAll =
    Http.get fetchAllUrl activityDecoder
        |> Http.send OnFetchAll


fetchAllUrl : String
fetchAllUrl =
    "https://pdev-9f7fc.firebaseio.com/activities.json"


activityDecoder : Decoder (List Activity)
activityDecoder =
    map3 Activity
        (field "message" string)
        (field "pillar" string)
        (field "date" string)
        |> keyValuePairs
        |> map (\a -> List.map (\( id, mess ) -> mess id) a)
