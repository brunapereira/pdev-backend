module Activities.Commands exposing (..)

import Http
import Json.Decode as Decode exposing (field)
import Activities.Models exposing (Activity)
import Activities.Messages exposing (..)


fetchAll : Cmd Msg
fetchAll =
    Http.get fetchAllUrl collectionDecoder
        |> Http.send OnFetchAll


fetchAllUrl : String
fetchAllUrl =
    "https://pdev-9f7fc.firebaseio.com/activities.json"


collectionDecoder : Decode.Decoder (List Activity)
collectionDecoder =
    Decode.list memberDecoder


memberDecoder : Decode.Decoder Activity
memberDecoder =
    Decode.map4 Activity
        (field "message" Decode.string)
        (field "pillar" Decode.string)
        (field "date" Decode.string)
        (field "id" Decode.int)
