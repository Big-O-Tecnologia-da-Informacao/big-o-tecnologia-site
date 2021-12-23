module Page.Index exposing (Data, Model, Msg, page)

import Components.About exposing (sectionAbout)
import Components.MainFooter exposing (mainFooter)
import Components.MainHeader exposing (headerPage)
import Components.Technologies exposing (sectionTechnologies)
import DataSource exposing (DataSource)
import Head
import Head.Seo as Seo
import Page exposing (Page, StaticPayload)
import Pages.PageUrl exposing (PageUrl)
import Pages.Url
import Shared
import View exposing (View)


type alias Model =
    ()


type alias Msg =
    Never


type alias RouteParams =
    {}


page : Page RouteParams Data
page =
    Page.single
        { head = head
        , data = data
        }
        |> Page.buildNoState { view = view }


data : DataSource Data
data =
    DataSource.succeed
            { techs =
                [ { name = "Vue JS"
                  , img = "./images/vuelogo.svg"
                  , description = "Vue.js é um framework para a criação de interfaces gráfica de aplicações web, foi projetado para ser adotado de forma incremental. O core da biblioteca é focada na parte visual e pode-se adotar diversas bibliotecas do seu ecossistema para a criação de interfaces mais complexas e poderosas."
                  }
                , { name = "Elm"
                  , img = "./images/elmlogo.svg"
                  , description = "Elm é uma linguagem de programação funcional para a criação declarativa de interfaces gráfica de aplicações web. Elm é estaticamente tipada com checagem em tempo de compilação, com isso, uma das principais características é evitar erros em tempo de execução, Elm traz outras características de programação funcional como imutabilidade, funções puras e evita estados compartilhados."
                  }
                , { name = "Javascript"
                  , img = "./images/javascriptlogo.svg"
                  , description = "Javascript é uma linguagem de programação de alto nível utilizada para a iteração com usuários em plicações web que rodam no browser, é uma das três principais tecnologias da web atualmente com HTML e CSS. Javascript também é bastante utilizado para a criação de aplicações back-end quando executado junto a plataforma NodeJS."
                  }
                , { name = "Typescript"
                  , img = "./images/typescriptlogo.svg"
                  , description = "TypeScript é uma linguagem de programação desenvolvida pela Microsoft, é um superset de Javascript, adiciona tipagem estática opcional à linguagem e checagem em tempo de compilação, pode ser utilizado tanto no front-end para a criação de interfaces gráfica quanto no back-end utilizando NodeJS ou Deno."
                  }
                , { name = "PHP"
                  , img = "./images/phplogo.svg"
                  , description = "PHP é uma linguagem de programação utilizada para a criação de aplicações back-end capaz de gerar conteúdo dinâmico para diversos objetivos, fácil de aprender e de utilizar e possui um grande ecossistema de ferramentas e bibliotecas que fornecem inúmeras funcionalidades a linguagem, hoje 78,9% dos websites utiliza PHP na sua aplicação back-end."
                  }
                , { name = "Node JS"
                  , img = "./images/nodejslogo.svg"
                  , description = "Node.js é um ambiente de execução criado baseado no interpretador V8 do Google onde é possível criar aplicações utilizando Javascript e TypeScript sem a necessidade de um browser, possui um grande ecossistema que da flexibilidade para ser utilizado em qualquer situação para o desenvolvimento de aplicações web back-end."
                  }
                ]
            }


head :
    StaticPayload Data RouteParams
    -> List Head.Tag
head static =
    Seo.summary
        { canonicalUrlOverride = Nothing
        , siteName = "Big-O Tecnologia da Informação"
        , image =
            { url = Pages.Url.external "https://big-o-tecnologia.tech"
            , alt = "Big-O Tecnologia da Informação"
            , dimensions = Nothing
            , mimeType = Nothing
            }
        , description = "Big-O Tecnologia da Informação"
        , locale = Nothing
        , title = "Big-O Tecnologia da Informação"
        }
        |> Seo.website


type alias Technologie =
    { name : String
    , img : String
    , description : String
    }


type alias Data =
    { techs : List Technologie }


view :
    Maybe PageUrl
    -> Shared.Model
    -> StaticPayload Data RouteParams
    -> View Msg
view maybeUrl sharedModel static =
    { title = "Big-O Tecnologia da Informação"
        , body =
            [ headerPage
            , sectionAbout
            , sectionTechnologies static.data.techs
            , mainFooter
            ]
        }
