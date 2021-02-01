-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Interface.Actor exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Json.Decode as Decode
import Graphql.Internal.Encode as Encode exposing (Value)


type alias Fragments decodesTo =
    {
    onBot : SelectionSet decodesTo GithubNoFormat.Object.Bot,
onOrganization : SelectionSet decodesTo GithubNoFormat.Object.Organization,
onUser : SelectionSet decodesTo GithubNoFormat.Object.User
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
      Fragments decodesTo
      -> SelectionSet decodesTo GithubNoFormat.Interface.Actor
fragments selections =
    Object.exhaustiveFragmentSelection
        [
         Object.buildFragment "Bot" selections.onBot,
Object.buildFragment "Organization" selections.onOrganization,
Object.buildFragment "User" selections.onUser
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    {
      onBot = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing),
onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }
type alias AvatarUrlOptionalArguments = { size : OptionalArgument Int }

{-| A URL pointing to the actor's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments)
-> SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Interface.Actor
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The username of the actor.
-}
login : SelectionSet String GithubNoFormat.Interface.Actor
login =
      Object.selectionForField "String" "login" [] (Decode.string)


{-| The HTTP path for this actor.
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Interface.Actor
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this actor.
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Interface.Actor
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)
