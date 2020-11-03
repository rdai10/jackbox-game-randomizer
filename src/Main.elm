module Main exposing (..)

import Browser
import Games
import Html exposing (..)
import Html.Events exposing (onClick)
import Random


main : Program () Model Msg
main =
    Browser.element
        { subscriptions = \_ -> Sub.none
        , view = view
        , update = update
        , init = init
        }


type alias Model =
    { winner : Maybe Games.Game }


type Msg
    = Clicked
    | ReceivedRandomGame Games.Game


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Clicked ->
            ( model, Random.generate ReceivedRandomGame Games.generator )

        ReceivedRandomGame randomGame ->
            ( { winner = Just randomGame }, Cmd.none )


init : flags -> ( Model, Cmd msg )
init flags =
    ( { winner = Nothing }, Cmd.none )


view : Model -> Html Msg
view model =
    let
        winner =
            case model.winner of
                Nothing ->
                    ""

                Just winningGame ->
                    winningGame.name
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
