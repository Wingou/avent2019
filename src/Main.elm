module Main exposing (..)

import Browser
import Html exposing (Html, a, div, h2, hr, img, text)
import Html.Attributes exposing (href, src, style, target)



---------------------------------------
----------- TYPES ---------------------


type Msg
    = NoOp


type alias Model =
    { grid : List Cell
    }


type alias Cell =
    { id : Int
    }



---------------------------------------
----------- CONSTANTES ----------------


colorVeepee : String
colorVeepee =
    "#ec008c"



---------------------------------------
----------- INITIALISATION ------------


intialModel : Model
intialModel =
    { grid =
        [ { id = 1 }
        , { id = 2 }
        , { id = 3 }
        ]
    }


init : ( Model, Cmd Msg )
init =
    ( intialModel
    , Cmd.none
    )



---------------------------------------
----------- HELPERS -------------------
-- exemple : compareInt


compareInt : Int -> Int -> Bool
compareInt a b =
    if a == b then
        True

    else
        False



---------------------------------------
----------- HTML ----------------------
-- exemple : displayCoucou


displayCoucou : Html Msg
displayCoucou =
    div [] [ text "Coucou" ]



---------------------------------------
----------- VIEW ----------------------


view : Model -> Html Msg
view model =
    div []
        [ h2 [] [ text "Mon Calendrier de l'Avent 2019 en ELM !!!" ]
        , img [ src "images/door120/door1.jpg" ] []
        , img [ src "images/img120/1.jpg" ] []
        , div [] [ text "Derrière chaque Porte une Image." ]
        , a [ href "https://calendar-9f1c9.web.app/", target "_blank" ] [ text "Voir un exemple ici" ]
        , hr [] []
        , h2 [] [ text "Les thumbnails" ]
        , div [] [ text "Portes -> /images/door120/" ]
        , div [] [ text "Images -> /images/img120/" ]
        , hr [] []
        , h2 [] [ text "Les Images en taille réelle" ]
        , div [] [ text "Images -> /images/img000/" ]
        , hr [] []
        , h2 [] [ text "La nomenclature des fichiers" ]
        , div [] [ text "Portes -> door[n° du jour].jpg" ]
        , div [] [ text "ex : door1.jpg ou door23.jpg" ]
        , div [] [ text " - " ]
        , div [] [ text "Images -> [n° du jour].jpg" ]
        , div [] [ text "ex : 1.jpg ou 23.jpg" ]
        , hr [] []
        , div [] [ text "Enjoy ! Bon Workshop !" ]
        ]



---------------------------------------
----------- SUBSCRIPTIONS -------------


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



---------------------------------------
----------- UPDATE --------------------


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



---------------------------------------
----------- PROGRAMME -----------------


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = subscriptions
        }
