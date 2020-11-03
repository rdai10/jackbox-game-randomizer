module Main exposing (..)

import Browser
import Games
import Html exposing (..)
import Html.Events exposing (onClick)


main : Program () Model Msg
main =
    Browser.element
        { subscriptions = \_ -> Sub.none
        , view = view
        , update = update
        , init = init
        }


type alias Model =
    { showWinner : Bool }


type Msg
    = Clicked


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        Clicked ->
            ( { showWinner = not model.showWinner }, Cmd.none )


init : flags -> ( Model, Cmd msg )
init flags =
    ( { showWinner = False }, Cmd.none )


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
