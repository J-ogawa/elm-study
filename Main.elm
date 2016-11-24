import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing ( onClick )

-- APP
main : Program Never Model Msg
main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- MODEL
type alias Model = List String

model : List String
model = []

-- UPDATE
type Msg = NoOp | Add

update : Msg -> Model -> Model
update msg model =
  case msg of
    NoOp -> model
    Add -> toString(List.length model) :: model

-- VIEW
view : Model -> Html Msg
view model =
 div [][
   button [ class "btn btn-primary btn-lg", onClick Add ][
     text "+"
   ],
   ul [] <| (List.map (\a -> li [ style [( "background-color", "#eeeeee" )] ] [ text a ]) model)
 ]
