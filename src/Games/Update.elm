module Games.Update exposing (..)

import Games.Messages exposing (Msg(..))
import Games.Models exposing (Game, GameId)
import Navigation


update : Msg -> List Game -> ( List Game, Cmd Msg )
update message games =
    case message of
        FetchAllDone newGames ->
            ( newGames, Cmd.none )

        FetchAllFail error ->
            ( games, Cmd.none )

        ShowGames ->
            ( games, Navigation.newUrl "#games" )
