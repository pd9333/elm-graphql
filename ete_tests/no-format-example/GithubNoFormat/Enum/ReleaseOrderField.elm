-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.ReleaseOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which release connections can be ordered.

  - CreatedAt - Order releases by creation time
  - Name - Order releases alphabetically by name

-}
type ReleaseOrderField
    = CreatedAt
    | Name
list : List ReleaseOrderField
list =
    [CreatedAt, Name]
decoder : Decoder ReleaseOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    "NAME" ->
                        Decode.succeed Name

                    _ ->
                        Decode.fail ("Invalid ReleaseOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : ReleaseOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
                "CREATED_AT"


        Name ->
                "NAME"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe ReleaseOrderField
fromString enumString =
    case enumString of
        "CREATED_AT" ->
                Just CreatedAt


        "NAME" ->
                Just Name

        _ ->
                Nothing
