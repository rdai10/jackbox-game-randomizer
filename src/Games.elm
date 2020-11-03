module Games exposing (Game, GameType(..), Pack(..), all)


type alias Game =
    { name : String
    , minParticipant : Int
    , maxParticipant : Int
    , gameType : GameType
    , pack : Pack
    }


type GameType
    = Trivia
    | Drawing
    | FillInTheBlank
    | Other


type Pack
    = PartyPack
    | PartyPack2


all : List Game
all =
    [ { name = "You Don't Know Jack 2015"
      , minParticipant = 1
      , maxParticipant = 4
      , gameType = Trivia
      , pack = PartyPack
      }
    , { name = "Drawful"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = Drawing
      , pack = PartyPack
      }
    ]
