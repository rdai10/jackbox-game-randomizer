module Games exposing (Game, GameType(..), Pack(..), all, generator)

import Random exposing (Generator)


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
    | PartyPack3
    | PartyPack4
    | PartyPack5
    | PartyPack6
    | PartyPack7


all : List Game
all =
    default :: rest


default : Game
default =
    { name = "You Don't Know Jack 2015"
    , minParticipant = 1
    , maxParticipant = 4
    , gameType = Trivia
    , pack = PartyPack
    }


rest : List Game
rest =
    [ { name = "Drawful"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = Drawing
      , pack = PartyPack
      }
    , { name = "Word Spud"
      , minParticipant = 2
      , maxParticipant = 8
      , gameType = Other
      , pack = PartyPack
      }
    , { name = "Lie Swatter"
      , minParticipant = 1
      , maxParticipant = 100
      , gameType = Trivia
      , pack = PartyPack
      }
    , { name = "Fibbage XL"
      , minParticipant = 2
      , maxParticipant = 8
      , gameType = Trivia
      , pack = PartyPack
      }
    ]


generator : Generator Game
generator =
    Random.uniform default rest
