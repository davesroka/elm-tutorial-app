module Players.Models exposing (..)


type alias PlayerId =
    Int


type alias Player =
    { id : PlayerId
    , name : String
    , level : Int
    , hometown : String
    }


new : Player
new =
    { id = 0
    , name = ""
    , level = 1
    , hometown = "Durham"
    }
