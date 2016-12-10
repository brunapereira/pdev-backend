module Activities.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Activities.Messages exposing (Msg)
import Activities.Models exposing (Activity)


view : List Activity -> Html Msg
view activities =
    div []
        [ nav activities
        , list activities
        ]


nav : List Activity -> Html Msg
nav activities =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ] [ text "Activities" ] ]


list : List Activity -> Html Msg
list activities =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Id" ]
                    , th [] [ text "Message" ]
                    , th [] [ text "Date" ]
                    , th [] [ text "Pillar" ]
                    ]
                ]
            , tbody [] (List.map activityRow activities)
            ]
        ]


activityRow : Activity -> Html Msg
activityRow activity =
    tr []
        [ td [] [ text (toString activity.id) ]
        , td [] [ text activity.message ]
        , td [] [ text activity.date ]
        , td [] [ text activity.pillar ]
        ]
