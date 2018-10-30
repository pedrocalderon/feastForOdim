module FeatForOdim exposing (main)

import Html exposing (div, text)
import Html.Attributes exposing (..)
import Random


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


diceRoll : Random.Generator Int
diceRoll max =
    Random.int 1 max


rollEightSidedDie : Random.Generator
rollEightSidedDie =
    diceRoll 8


rollTwelveSidedDie : Random.Generator
rollTwelveSidedDie =
    diceRoll 12


view model =
    div [] [ text "Feast for odim project" ]


main =
    view "no model yet"
