module Components.Technologies exposing (sectionTechnologies)

import Html exposing (Html, div, h2, h3, h4, img, p, section, span, text)
import Html.Attributes exposing (class, src)


type alias Technologie =
    { name : String
    , img : String
    , description : String
    }


sectionTechnologies : List Technologie -> Html msg
sectionTechnologies technologies =
    section
        [ class "section-technologies section-container" ]
        [ h2
            [ class "title-technologies" ]
            [ text "Tecnologias" ]
        , div
            [ class "cards-technologies-container" ]
            (List.map (\technologie -> cardTechnologie technologie) technologies)
        ]


cardTechnologie : Technologie -> Html msg
cardTechnologie technologie =
    div
        [ class "card-technologie" ]
        [ h3
            [ class "card-title" ]
            [ text technologie.name ]
        , div
            [ class "card-img-technologie" ]
            [ img
                [ src technologie.img ]
                []
            ]
        , div
            [ class "description-technologie" ]
            [ text technologie.description ]
        ]
