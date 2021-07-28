-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.ReviewRequestRemovedEvent exposing (..)

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

{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewRequestRemovedEvent
actor object____ =
      Object.selectionForCompositeField "actor" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.ReviewRequestRemovedEvent
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.ReviewRequestRemovedEvent
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest
 -> SelectionSet decodesTo GithubNoFormat.Object.ReviewRequestRemovedEvent
pullRequest object____ =
      Object.selectionForCompositeField "pullRequest" [] (object____) (Basics.identity)


{-| Identifies the reviewer whose review request was removed.
-}
requestedReviewer : SelectionSet decodesTo GithubNoFormat.Union.RequestedReviewer
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewRequestRemovedEvent
requestedReviewer object____ =
      Object.selectionForCompositeField "requestedReviewer" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the user whose review request was removed.
-}
subject : SelectionSet decodesTo GithubNoFormat.Object.User
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.ReviewRequestRemovedEvent
subject object____ =
      Object.selectionForCompositeField "subject" [] (object____) (Basics.identity >> Decode.nullable)
