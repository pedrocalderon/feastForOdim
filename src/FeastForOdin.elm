module FeatForOdim exposing (main)

import Html exposing (div, text)
import Html.Attributes exposing (..)


type alias Game =
    Int


type Player
    = Player1
    | Player2
    | Player3
    | Player4


type Colors
    = Red
    | Blue
    | Green
    | Black


type alias Model =
    { game : Game
    }


view model =
    div [] [ text "Feast for odim project" ]


main =
    view "no model yet"
