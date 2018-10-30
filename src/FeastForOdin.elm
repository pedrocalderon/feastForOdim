module FeatForOdim exposing (main)

import Html exposing (div, text)
import Html.Attributes exposing (..)


type alias Game =
    Int


type Player
    = Red
    | Blue
    | Green
    | Black


type Actions
    = BuildHouses1
    | BuildHouses2


type alias Model =
    { game : Game
    }


view model =
    div [] [ text "Feast for odim project" ]


main =
    view "no model yet"
