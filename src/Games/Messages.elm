module Games.Messages exposing (..)

import Http
import Games.Models exposing (GameId, Game)


type Msg
    = FetchAllDone (List Game)
    | FetchAllFail Http.Error
    | ShowGames
