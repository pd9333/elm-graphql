-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReleaseAsset exposing (..)

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

{-| The asset's content-type
-}
contentType : SelectionSet String GithubNoFormat.Object.ReleaseAsset
contentType =
      Object.selectionForField "String" "contentType" [] (Decode.string)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.ReleaseAsset
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of times this asset was downloaded
-}
downloadCount : SelectionSet Int GithubNoFormat.Object.ReleaseAsset
downloadCount =
      Object.selectionForField "Int" "downloadCount" [] (Decode.int)


{-| Identifies the URL where you can download the release asset via the browser.
-}
downloadUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.ReleaseAsset
downloadUrl =
      Object.selectionForField "ScalarCodecs.Uri" "downloadUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.ReleaseAsset
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the title of the release asset.
-}
name : SelectionSet String GithubNoFormat.Object.ReleaseAsset
name =
      Object.selectionForField "String" "name" [] (Decode.string)


{-| Release that the asset is associated with
-}
release : SelectionSet decodesTo GithubNoFormat.Object.Release
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReleaseAsset
release object_ =
      Object.selectionForCompositeField "release" [] (object_) (identity >> Decode.nullable)


{-| The size (in bytes) of the asset
-}
size : SelectionSet Int GithubNoFormat.Object.ReleaseAsset
size =
      Object.selectionForField "Int" "size" [] (Decode.int)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.ReleaseAsset
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The user that performed the upload
-}
uploadedBy : SelectionSet decodesTo GithubNoFormat.Object.User
-> SelectionSet decodesTo GithubNoFormat.Object.ReleaseAsset
uploadedBy object_ =
      Object.selectionForCompositeField "uploadedBy" [] (object_) (identity)


{-| Identifies the URL of the release asset.
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.ReleaseAsset
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)
