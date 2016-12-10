module Activities.Update exposing (..)

import Activities.Messages exposing (Msg(..))
import Activities.Models exposing (Activity)


update : Msg -> List Activity -> ( List Activity, Cmd Msg )
update message activities =
    case message of
        OnFetchAll (Ok newActivities) ->
            ( newActivities, Cmd.none )

        OnFetchAll (Err error) ->
            ( activities, Cmd.none )
