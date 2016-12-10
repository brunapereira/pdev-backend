module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Activities.Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ActivitiesMsg subMsg ->
            let
                ( updatedActivities, cmd ) =
                    Activities.Update.update subMsg model.activities
            in
                ( { model | activities = updatedActivities }, Cmd.map ActivitiesMsg cmd )
