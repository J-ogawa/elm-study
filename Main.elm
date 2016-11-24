import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing ( onClick )
-- import Svg exposing (..)
-- import Svg.Attributes exposing (..)

-- APP
main : Program Never Model Msg
main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL
type alias Model = List String

model : List String
model = ["0", "1", "2"]

-- UPDATE
type Msg = NoOp | Increment

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Increment -> "1" :: model

-- VIEW
view : Model -> Html Msg
view model =
--  div [ Html.Attributes.class "row" ] [
--    svg [
--      x "200",
--      y "200",
--      Svg.Attributes.width "150",
--      Svg.Attributes.height "150"
--    ] [circle [ Svg.Attributes.cx "100", Svg.Attributes.cy "100", r "100"] []]
--  ]
 div [ class "row" ][
   button [ class "btn btn-primary btn-lg", onClick Increment ][                  -- click handler
     text "qq"
   ]
   , ul [] <| (List.map (\a -> li [] [ text a ]) model)
   , div [ class "container" ][
       div [ class "row warning" ][
         div [ class "col-xs-12"][]
       ]
     ]
 ]

--  div [ class "container", style [("margin-top", "30px"), ( "text-align", "center" )] ][    -- inline CSS (literal)
--    div [ class "row" ][
--      div [ class "col-xs-12" ][
--        div [ class "jumbotron" ][
--          img [ src "static/img/elm.jpg", style styles.img ] []                             -- inline CSS (via var)
--          , hello model                                                                     -- ext 'hello' component (takes 'model' as arg)
--          , p [] [ text ( "Elm Webpack Starter" ) ]
--          , button [ class "btn btn-primary btn-lg", onClick Increment ] [                  -- click handler
--            span[ class "glyphicon glyphicon-star" ][]                                      -- glyphicon
--            , span[][ text "FTW!" ]
--          ]
--        ]
--      ]
--    ]
--  ]


-- CSS STYLES
styles : { img : List ( String, String ) }
styles =
  {
    img =
      [ ( "width", "33%" )
      , ( "border", "4px solid #337AB7")
      ]
  }

