module Components.About exposing (..)

import Components.BigOLogo exposing (bigOLogo)
import Html exposing (Html, div, h2, h4, p, section, span, text)
import Html.Attributes exposing (class, id)


sectionAbout : Html msg
sectionAbout =
    section
        [ class "section-about section-container", id "section-about" ]
        [ h2
            [ class "title-about" ]
            [ text "Sobre" ]
        , p
            [ class "about-text" ]
            [ text "A Big-O Tecnologia da Informação nasce como um laboratório de criação e experimentação na área de tecnologia e desenvolvimento de software. Visando trazer ferramentas novas e inovadoras para o desenvolvimento de software aliado com ideias e conceitos já fundamentados possibilitando a criação de produtos inovadores, saudáveis e funcionais que possam crescer e alavancar seu negócio." ]
        , bigOLogo
        , div
            [ class "about-help-text-container" ]
            [ h4
                [ class "title-help-text" ]
                [ text "Como podemos ajudar" ]
            , div
                [ class "text-content" ]
                [ div
                    [ class "help-text-content" ]
                    [ h4
                        [ class "help-text-title" ]
                        [ text "Ajudando a criar sua ideia do zero" ]
                    , p
                        [ class "help-text" ]
                        [ text "Teve uma ideia e precisa de uma ajuda para iniciar ou mesmo dar uma acelerada no desenvolvimento? Podemos ajudar a planejar e dar o start no seu projeto para entregar rapidamente com um código seguindo as melhores práticas de qualidade e desempenho" ]
                    ]
                , div
                    [ class "help-text-content" ]
                    [ h4
                        [ class "help-text-title" ]
                        [ text "Melhorando seu produto já existente" ]
                    , p
                        [ class "help-text" ]
                        [ text "Já tem um produto e precisa evoluir? Podemos analisar sua solução atual e fornecer insights para a evolução do seu software e também podemos ajudar no desenvolvimento dessa evolução nos juntando a sua equipe interna e acelerar seu projeto sempre visando qualidade e a satisfação dos seus clientes" ]
                    ]
                ]
            ]
        ]
