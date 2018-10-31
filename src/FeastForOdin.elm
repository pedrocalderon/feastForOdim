module FeatForOdin exposing (main)

import Html exposing (div, text)
import Html.Attributes exposing (..)
import Random


maxSupply =
    { bowAndArrows = 12
    , longSwords = 11
    , snares = 12
    , spears = 12
    , sheds = 3
    , stoneHouses = 3
    , longHouses = 5
    , whalingBoats = 10
    , knarrs = 12
    , longShips = 10
    , vikings = 12
    }


type alias Game =
    Int


type GameType
    = Long
    | Short


type Player
    = Black
    | Blue
    | Green
    | Red


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


type ShipTile
    = WhalingBoat
    | Knarr
    | LongShip


type Goods
    = Wood
    | Store
    | Ore


type alias MountaiStrip =
    List Goods


type SpecialTile
    = AmberFigure
    | Axe
    | Belt
    | BlacksmithsHammer
    | Crucifix
    | Cloakpin
    | DrinkingHorn
    | EnglishCrown
    | Fibula
    | GlassBeads
    | Goblet
    | GoldBrooch
    | Helmet
    | Horseshoe
    | RoundShield


type OrangeFoodTile
    = Peas
    | Flax
    | Beans
    | Grain
    | Cabbage
    | Fuits


type RedFoodTile
    = Mead
    | Stockfish
    | Milk
    | SaltMeat
    | WhaleMeat


type AnimalTile
    = Cattle
    | CattlePregnant
    | Sheep
    | SheepPregnant


type GreenEquipmentTile
    = Oil
    | Hide
    | Wool
    | Linen
    | SkinAndBones
    | Fur
    | Robe
    | Clothing


type BlueEquipmentTile
    = RuneStone
    | Silverware
    | Chest
    | Silk
    | Spices
    | Jewelry
    | SilverHoard


type WeaponCard
    = BowAndArrow
    | LongSword
    | Snare
    | Spear


type OcupationalCard
    = TodoAddCards


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


type alias PlayerHand =
    { money : Int
    , weapons : List WeaponCard
    , occupations : List OcupationalCard
    , specialTiles : List SpecialTile
    , orangeFoodTiles : List OrangeFoodTile
    , redFoodTiles : List RedFoodTile
    , greenEquipmentTiles : List GreenEquipmentTile
    , blueEquipmentTiles : List BlueEquipmentTile
    , vikings : Int
    }


gameLength : GameType -> Int
gameLength gameType =
    case gameType of
        Long ->
            7

        Short ->
            6


initialPlayerHand : GameType -> PlayerHand
initialPlayerHand gameType =
    let
        vikings =
            maxSupply.vikings - gameLength gameType
    in
    { money = 10
    , weapons = [ BowAndArrow, Snare, Spear ]
    , occupations = []
    , specialTiles = []
    , orangeFoodTiles = []
    , redFoodTiles = [ Mead ]
    , greenEquipmentTiles = []
    , blueEquipmentTiles = []
    , vikings = vikings
    }


type alias Model =
    { game : Game
    , gameType : GameType
    , roundPhase : RoundPhase
    , roundCounter : Int
    , currentPlayer : Player
    , blackPlayerHand : PlayerHand
    , bluePlayerHand : PlayerHand
    , greenPlayerHand : PlayerHand
    , redPlayerHand : PlayerHand
    }


initialModel : Model
initialModel =
    { game = 0
    , gameType = Short
    , roundPhase = ANewViking
    , roundCounter = 1
    , currentPlayer = Black
    , blackPlayerHand = initialPlayerHand Short
    , bluePlayerHand = initialPlayerHand Short
    , greenPlayerHand = initialPlayerHand Short
    , redPlayerHand = initialPlayerHand Short
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
