module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.sandbox { view = view, update = update, init = init }


type alias Model =
    { showWinner : Bool }


type Msg
    = Clicked


update : Msg -> Model -> Model
update msg model =
    case msg of
        Clicked ->
            { showWinner = not model.showWinner }


init : Model
init =
    { showWinner = False }


view : Model -> Html Msg
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
