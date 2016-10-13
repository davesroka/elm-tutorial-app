module Games.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Games.Messages exposing (..)
import Games.Models exposing (Game)


view : List Game -> Html Msg
view games =
    div []
        [ nav games
        , list games
        ]


nav : List Game -> Html Msg
nav games =
    div [ class "clearfix mb2 white bg-black" ]
        [ div [ class "left p2" ] [ text "Games" ] ]


list : List Game -> Html Msg
list games =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Id" ]
                    , th [] [ text "Name" ]
                    , th [] [ text "Players" ]
                    ]
                ]
            , tbody [] (List.map gameRow games)
            ]
        ]


gameRow : Game -> Html Msg
gameRow game =
    tr []
        [ td [] [ text (toString game.id) ]
        , td [] [ text game.name ]
        ]
