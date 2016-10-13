module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Players.Update
import Games.Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        PlayersMsg subMsg ->
            let
                ( updatedPlayers, cmd ) =
                    Players.Update.update subMsg model.players
            in
                ( { model | players = updatedPlayers }, Cmd.map PlayersMsg cmd )

        GamesMsg subMsg ->
            let
                ( updatedGames, cmd ) =
                    Games.Update.update subMsg model.games
            in
                ( { model | games = updatedGames }, Cmd.map GamesMsg cmd )
