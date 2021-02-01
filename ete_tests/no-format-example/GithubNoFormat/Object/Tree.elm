-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.Tree exposing (..)

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

{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String GithubNoFormat.Object.Tree
abbreviatedOid =
      Object.selectionForField "String" "abbreviatedOid" [] (Decode.string)


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Tree
commitResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "commitResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Tree
commitUrl =
      Object.selectionForField "ScalarCodecs.Uri" "commitUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| A list of tree entries.
-}
entries : SelectionSet decodesTo GithubNoFormat.Object.TreeEntry
-> SelectionSet (Maybe (List decodesTo)) GithubNoFormat.Object.Tree
entries object_ =
      Object.selectionForCompositeField "entries" [] (object_) (identity >> Decode.list >> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.Tree
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The Git object ID
-}
oid : SelectionSet GithubNoFormat.ScalarCodecs.GitObjectID GithubNoFormat.Object.Tree
oid =
      Object.selectionForField "ScalarCodecs.GitObjectID" "oid" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The Repository the Git object belongs to
-}
repository : SelectionSet decodesTo GithubNoFormat.Object.Repository
-> SelectionSet decodesTo GithubNoFormat.Object.Tree
repository object_ =
      Object.selectionForCompositeField "repository" [] (object_) (identity)
