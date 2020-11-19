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
    , { name = "Fibbage 2"
      , minParticipant = 2
      , maxParticipant = 8
      , gameType = Trivia
      , pack = PartyPack2
      }
    , { name = "Earwax"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = Other
      , pack = PartyPack2
      }
    , { name = "Bidiots"
      , minParticipant = 3
      , maxParticipant = 6
      , gameType = Drawing
      , pack = PartyPack2
      }
    , { name = "Quiplash XL"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = FillInTheBlank
      , pack = PartyPack2
      }
    , { name = "Bomb Corp"
      , minParticipant = 1
      , maxParticipant = 4
      , gameType = Other
      , pack = PartyPack2
      }
    , { name = "Quiplash 2"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = FillInTheBlank
      , pack = PartyPack3
      }
    , { name = "Trivia Murder Party"
      , minParticipant = 1
      , maxParticipant = 8
      , gameType = Trivia
      , pack = PartyPack3
      }
    , { name = "Guesspionage"
      , minParticipant = 2
      , maxParticipant = 8
      , gameType = Trivia
      , pack = PartyPack3
      }
    , { name = "Fakin' It"
      , minParticipant = 3
      , maxParticipant = 6
      , gameType = Other
      , pack = PartyPack3
      }
    , { name = "Tee K.O"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = Drawing
      , pack = PartyPack3
      }
    , { name = "Fibbage 3"
      , minParticipant = 2
      , maxParticipant = 8
      , gameType = FillInTheBlank
      , pack = PartyPack4
      }
    , { name = "Survive the Internet"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = FillInTheBlank
      , pack = PartyPack4
      }
    , { name = "Monster Seeking Monster"
      , minParticipant = 3
      , maxParticipant = 7
      , gameType = Other
      , pack = PartyPack4
      }
    , { name = "Bracketeering"
      , minParticipant = 3
      , maxParticipant = 16
      , gameType = FillInTheBlank
      , pack = PartyPack4
      }
    , { name = "Civic Doodle"
      , minParticipant = 3
      , maxParticipant = 8
      , gameType = Drawing
      , pack = PartyPack4
      }
    ]


generator : Generator Game
generator =
    Random.uniform default rest
