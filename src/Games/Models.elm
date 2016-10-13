module Games.Models exposing (..)

import Players.Models exposing (Player)


type alias GameId =
    Int


type alias Game =
    { id : GameId
    , name : String
    , players : List Player
    }


new : Game
new =
    { id = 0
    , name = ""
    , players = []
    }
