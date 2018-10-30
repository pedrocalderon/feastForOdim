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


type Borad
    = Main
    | Building
    | Exploration


type BuildingBoards
    = Shed
    | StoneHouse
    | LongHouse


type ExplorationBoards
    = Shetland
    | BearIsland
    | FaroeIsland
    | BaffinIsland
    | Iceland
    | Labrador
    | Greenland
    | Newfoundland


type ShipTiles
    = WhalingBoat
    | Knarr
    | LongShip


type Goods
    = Wood
    | Store
    | Ore
    | Money


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
    , sheds : Int
    , stoneHouses : Int
    , longHouses : Int
    , whalingBoats : Int
    , knarrs : Int
    , longShips : Int
    }


initialModel : Model
initialModel =
    { game = 0
    , roundPhase = ANewViking
    , roundCounter = 1
    , sheds = 3
    , stoneHouses = 3
    , longHouses = 5
    , whalingBoats = 10
    , knarrs = 12
    , longShips = 10
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
