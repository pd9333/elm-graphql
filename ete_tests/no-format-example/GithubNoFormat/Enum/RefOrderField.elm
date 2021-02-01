-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Enum.RefOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which ref connections can be ordered.

  - TagCommitDate - Order refs by underlying commit date if the ref prefix is refs/tags/
  - Alphabetical - Order refs by their alphanumeric name

-}
type RefOrderField
    = TagCommitDate
    | Alphabetical
list : List RefOrderField
list =
    [TagCommitDate, Alphabetical]
decoder : Decoder RefOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "TAG_COMMIT_DATE" ->
                        Decode.succeed TagCommitDate

                    "ALPHABETICAL" ->
                        Decode.succeed Alphabetical

                    _ ->
                        Decode.fail ("Invalid RefOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
        )
        

{-| Convert from the union type representing the Enum to a string that the GraphQL server will recognize.
-}
toString : RefOrderField -> String
toString enum =
    case enum of
        TagCommitDate ->
                "TAG_COMMIT_DATE"


        Alphabetical ->
                "ALPHABETICAL"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RefOrderField
fromString enumString =
    case enumString of
        "TAG_COMMIT_DATE" ->
                Just TagCommitDate


        "ALPHABETICAL" ->
                Just Alphabetical

        _ ->
                Nothing
