-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.DeploymentStatus exposing (..)

import Github.Enum.DeploymentStatusState
import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.DeploymentStatus
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the actor who triggered the deployment.
-}
creator :
    SelectionSet decodesTo Github.Interface.Actor
    -> SelectionSet (Maybe decodesTo) Github.Object.DeploymentStatus
creator object____ =
    Object.selectionForCompositeField "creator" [] object____ (Basics.identity >> Decode.nullable)


{-| Identifies the deployment associated with status.
-}
deployment :
    SelectionSet decodesTo Github.Object.Deployment
    -> SelectionSet decodesTo Github.Object.DeploymentStatus
deployment object____ =
    Object.selectionForCompositeField "deployment" [] object____ Basics.identity


{-| Identifies the description of the deployment.
-}
description : SelectionSet (Maybe String) Github.Object.DeploymentStatus
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| Identifies the environment URL of the deployment.
-}
environmentUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.DeploymentStatus
environmentUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "environmentUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


id : SelectionSet Github.ScalarCodecs.Id Github.Object.DeploymentStatus
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the log URL of the deployment.
-}
logUrl : SelectionSet (Maybe Github.ScalarCodecs.Uri) Github.Object.DeploymentStatus
logUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "logUrl" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| Identifies the current state of the deployment.
-}
state : SelectionSet Github.Enum.DeploymentStatusState.DeploymentStatusState Github.Object.DeploymentStatus
state =
    Object.selectionForField "Enum.DeploymentStatusState.DeploymentStatusState" "state" [] Github.Enum.DeploymentStatusState.decoder


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarCodecs.DateTime Github.Object.DeploymentStatus
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
