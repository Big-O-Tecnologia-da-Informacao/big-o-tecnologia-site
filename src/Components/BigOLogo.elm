module Components.BigOLogo exposing (..)

import Html exposing (Html, div, span)
import Html.Attributes exposing (class)


bigOLogo : Html msg
bigOLogo =
    div
        [ class "big-o-logo-container" ]
        [ div
            [ class "circle" ]
            []
        , span
            [ class "detail-circle-line" ]
            []
        , span
            [ class "detail-one" ]
            []
        ]
