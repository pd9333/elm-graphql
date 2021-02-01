-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.IssueCommentEdge exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)

{-| A cursor for use in pagination.
-}
cursor : SelectionSet String GithubNoFormat.Object.IssueCommentEdge
cursor =
      Object.selectionForField "String" "cursor" [] (Decode.string)


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo GithubNoFormat.Object.IssueComment
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.IssueCommentEdge
node object_ =
      Object.selectionForCompositeField "node" [] (object_) (identity >> Decode.nullable)
