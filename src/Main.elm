module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { view = view, update = update, init = init }


type Msg
    = Clicked


update msg model =
    case msg of
        Clicked ->
            { showWinner = not model.showWinner }


init =
    { showWinner = False }


view model =
    let
        winner =
            if model.showWinner then
                "me!"

            else
                ""
    in
    section []
        [ h1 []
            [ button [ onClick Clicked ] [ text "Randomize" ]
            , text "me a Jackbox game!"
            ]
        , div
            []
            [ text ("The winner is " ++ winner) ]
        ]
