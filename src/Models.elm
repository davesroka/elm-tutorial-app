module Models exposing (..)

import Players.Models exposing (Player)
import Games.Models exposing (Game)
import Routing


type alias Model =
    { players : List Player
    , games : List Game
    , route : Routing.Route
    }


initialModel : Routing.Route -> Model
initialModel route =
    { players = []
    , games = []
    , route = route
    }
