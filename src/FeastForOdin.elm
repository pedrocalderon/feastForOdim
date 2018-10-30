module FeatForOdin exposing (main)

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


type RoundPhase
    = ANewViking
    | Harvers
    | TurnExplorationBords
    | DrawWeapon
    | Actions
    | DetermineStartPlayer
    | Income
    | AnimalBreeding
    | Feast
    | Bonus
    | UpdateMontainStrips
    | RemovePlacedVikings


type ActionsList
    = BuildHouses1
    | BuildHouses2


type alias Model =
    { game : Game
    , roundPhase : RoundPhase
    , roundCounter : Int
    }


initialModel : Model
initialModel =
    { game = 0
    , roundPhase = ANewViking
    , roundCounter = 1
    }


diceRoll : Int -> Random.Generator Int
diceRoll max =
    Random.int 1 max


rollEightSidedDie : Random.Generator Int
rollEightSidedDie =
    diceRoll 8


rollTwelveSidedDie : Random.Generator Int
rollTwelveSidedDie =
    diceRoll 12


view model =
    div [] [ text "Feast for odim project" ]


main =
    view "no model yet"
