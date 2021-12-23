module Components.MainFooter exposing (..)

import Components.BigOLogo exposing (bigOLogo)
import Html exposing (Html, a, div, footer, h1, section, text)
import Html.Attributes exposing (class, href)


mainFooter : Html msg
mainFooter =
    section
        [ class "main-footer-page" ]
        [ footer
            [ class "main-footer section-container" ]
            [ div
                [ class "logo-container" ]
                [ bigOLogo
                , div
                    [ class "footer-text-logo" ]
                    [ div
                        [ class "site-title" ]
                        [ text "BIG-O Tecnologia da Informação" ]
                    ]
                ]
            , div
                [ class "contact-email" ]
                [ text "Contato: contato@big-o-tecnologia.tech" ]
            , a
                [ class "button-top", href "#main-header-page" ]
                [ text "^" ]
            ]
        ]
