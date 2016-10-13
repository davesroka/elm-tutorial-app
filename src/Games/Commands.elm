module Games.Commands exposing (..)

import Http
import Json.Decode as Decode exposing ((:=))
import Json.Encode as Encode
import Task
import Players.Commands
import Games.Models exposing (GameId, Game)
import Games.Messages exposing (..)


fetchAll : Cmd Msg
fetchAll =
    Http.get collectionDecoder fetchAllUrl
        |> Task.perform FetchAllFail FetchAllDone


fetchAllUrl : String
fetchAllUrl =
    "http://localhost:4000/games"



-- DECODERS


collectionDecoder : Decode.Decoder (List Game)
collectionDecoder =
    Decode.list gameDecoder


gameDecoder : Decode.Decoder Game
gameDecoder =
    Decode.object3 Game
        ("id" := Decode.int)
        ("name" := Decode.string)
        ("players" := Players.Commands.collectionDecoder)
