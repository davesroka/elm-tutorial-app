module Messages exposing (..)

import Players.Messages
import Games.Messages


type Msg
    = PlayersMsg Players.Messages.Msg
    | GamesMsg Games.Messages.Msg
