-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReviewDismissalAllowance exposing (..)

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

{-| The actor that can dismiss.
-}
actor : SelectionSet decodesTo GithubNoFormat.Union.ReviewDismissalAllowanceActor
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewDismissalAllowance
actor object_ =
      Object.selectionForCompositeField "actor" [] (object_) (identity >> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.ReviewDismissalAllowance
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the protected branch associated with the allowed user or team.
-}
protectedBranch : SelectionSet decodesTo GithubNoFormat.Object.ProtectedBranch
-> SelectionSet decodesTo GithubNoFormat.Object.ReviewDismissalAllowance
protectedBranch object_ =
      Object.selectionForCompositeField "protectedBranch" [] (object_) (identity)
