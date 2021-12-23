module Components.MainHeader exposing (..)

import Components.BigOLogo exposing (bigOLogo)
import Html exposing (Html, a, div, h1, h2, header, img, nav, section, span, text)
import Html.Attributes exposing (class, href, id, src)


headerPage : Html msg
headerPage =
    section [ class "main-header-page", id "main-header-page" ]
        [ header
            [ class "header-content section-container" ]
            [ bigOLogo
            , div
                [ class "header-text-container" ]
                [ h1
                    [ class "site-title" ]
                    [ text "Big-O" ]
                , h2
                    [ class "site-subtitle" ]
                    [ text "Tecnologia da Informação" ]
                ]
            ]
        ]
