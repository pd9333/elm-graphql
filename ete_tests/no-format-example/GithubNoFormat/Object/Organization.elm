-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.Organization exposing (..)

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
import GithubNoFormat.Enum.RepositoryPrivacy
import GithubNoFormat.Enum.RepositoryAffiliation
import GithubNoFormat.Enum.ProjectState
import GithubNoFormat.Enum.RepositoryPrivacy
import GithubNoFormat.Enum.RepositoryAffiliation
import GithubNoFormat.Enum.TeamPrivacy
import GithubNoFormat.Enum.TeamRole
type alias AvatarUrlOptionalArguments = { size : OptionalArgument Int }

{-| A URL pointing to the organization's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments)
-> SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size (Encode.int) ]
                |> List.filterMap identity
    in
      Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.Organization
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The organization's public profile description.
-}
description : SelectionSet (Maybe String) GithubNoFormat.Object.Organization
description =
      Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The organization's public email.
-}
email : SelectionSet (Maybe String) GithubNoFormat.Object.Organization
email =
      Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.Organization
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The organization's public profile location.
-}
location : SelectionSet (Maybe String) GithubNoFormat.Object.Organization
location =
      Object.selectionForField "(Maybe String)" "location" [] (Decode.string |> Decode.nullable)


{-| The organization's login name.
-}
login : SelectionSet String GithubNoFormat.Object.Organization
login =
      Object.selectionForField "String" "login" [] (Decode.string)


type alias MembersOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String }

{-| A list of users who are members of this organization.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
members : (MembersOptionalArguments -> MembersOptionalArguments)
-> SelectionSet decodesTo GithubNoFormat.Object.UserConnection
-> SelectionSet decodesTo GithubNoFormat.Object.Organization
members fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "members" optionalArgs (object_) (identity)


{-| The organization's public profile name.
-}
name : SelectionSet (Maybe String) GithubNoFormat.Object.Organization
name =
      Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
newTeamResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "newTeamResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL creating a new team
-}
newTeamUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
newTeamUrl =
      Object.selectionForField "ScalarCodecs.Uri" "newTeamUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The billing email for the organization.
-}
organizationBillingEmail : SelectionSet (Maybe String) GithubNoFormat.Object.Organization
organizationBillingEmail =
      Object.selectionForField "(Maybe String)" "organizationBillingEmail" [] (Decode.string |> Decode.nullable)


type alias PinnedRepositoriesOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String
,privacy : OptionalArgument GithubNoFormat.Enum.RepositoryPrivacy.RepositoryPrivacy
,orderBy : OptionalArgument GithubNoFormat.InputObject.RepositoryOrder
,affiliations : OptionalArgument (List (Maybe GithubNoFormat.Enum.RepositoryAffiliation.RepositoryAffiliation))
,isLocked : OptionalArgument Bool }

{-| A list of repositories this user has pinned to their profile

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Affiliation options for repositories returned from the connection
  - isLocked - If non-null, filters repositories according to whether they have been locked

-}
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments)
-> SelectionSet decodesTo GithubNoFormat.Object.RepositoryConnection
-> SelectionSet decodesTo GithubNoFormat.Object.Organization
pinnedRepositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, privacy = Absent, orderBy = Absent, affiliations = Absent, isLocked = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "privacy" filledInOptionals.privacy ((Encode.enum GithubNoFormat.Enum.RepositoryPrivacy.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (GithubNoFormat.InputObject.encodeRepositoryOrder), Argument.optional "affiliations" filledInOptionals.affiliations ((Encode.enum GithubNoFormat.Enum.RepositoryAffiliation.toString) |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked (Encode.bool) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "pinnedRepositories" optionalArgs (object_) (identity)


type alias ProjectRequiredArguments = { number : Int }

{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.Project
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Organization
project requiredArgs object_ =
      Object.selectionForCompositeField "project" [ Argument.required "number" requiredArgs.number (Encode.int) ] (object_) (identity >> Decode.nullable)


type alias ProjectsOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String
,orderBy : OptionalArgument GithubNoFormat.InputObject.ProjectOrder
,search : OptionalArgument String
,states : OptionalArgument (List GithubNoFormat.Enum.ProjectState.ProjectState) }

{-| A list of projects under the owner.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments)
-> SelectionSet decodesTo GithubNoFormat.Object.ProjectConnection
-> SelectionSet decodesTo GithubNoFormat.Object.Organization
projects fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent, search = Absent, states = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "orderBy" filledInOptionals.orderBy (GithubNoFormat.InputObject.encodeProjectOrder), Argument.optional "search" filledInOptionals.search (Encode.string), Argument.optional "states" filledInOptionals.states ((Encode.enum GithubNoFormat.Enum.ProjectState.toString) |> Encode.list) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "projects" optionalArgs (object_) (identity)


{-| The HTTP path listing organization's projects
-}
projectsResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
projectsResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "projectsResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL listing organization's projects
-}
projectsUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
projectsUrl =
      Object.selectionForField "ScalarCodecs.Uri" "projectsUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias RepositoriesOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String
,privacy : OptionalArgument GithubNoFormat.Enum.RepositoryPrivacy.RepositoryPrivacy
,orderBy : OptionalArgument GithubNoFormat.InputObject.RepositoryOrder
,affiliations : OptionalArgument (List (Maybe GithubNoFormat.Enum.RepositoryAffiliation.RepositoryAffiliation))
,isLocked : OptionalArgument Bool
,isFork : OptionalArgument Bool }

{-| A list of repositories that the user owns.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Affiliation options for repositories returned from the connection
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments)
-> SelectionSet decodesTo GithubNoFormat.Object.RepositoryConnection
-> SelectionSet decodesTo GithubNoFormat.Object.Organization
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, privacy = Absent, orderBy = Absent, affiliations = Absent, isLocked = Absent, isFork = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "privacy" filledInOptionals.privacy ((Encode.enum GithubNoFormat.Enum.RepositoryPrivacy.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (GithubNoFormat.InputObject.encodeRepositoryOrder), Argument.optional "affiliations" filledInOptionals.affiliations ((Encode.enum GithubNoFormat.Enum.RepositoryAffiliation.toString) |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked (Encode.bool), Argument.optional "isFork" filledInOptionals.isFork (Encode.bool) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "repositories" optionalArgs (object_) (identity)


type alias RepositoryRequiredArguments = { name : String }

{-| Find Repository.

  - name - Name of Repository to find.

-}
repository : RepositoryRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.Repository
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Organization
repository requiredArgs object_ =
      Object.selectionForCompositeField "repository" [ Argument.required "name" requiredArgs.name (Encode.string) ] (object_) (identity >> Decode.nullable)


{-| The HTTP path for this user
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The Organization's SAML Identity Providers
-}
samlIdentityProvider : SelectionSet decodesTo GithubNoFormat.Object.OrganizationIdentityProvider
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Organization
samlIdentityProvider object_ =
      Object.selectionForCompositeField "samlIdentityProvider" [] (object_) (identity >> Decode.nullable)


type alias TeamRequiredArguments = { slug : String }

{-| Find an organization's team by its slug.

  - slug - The name or slug of the team to find.

-}
team : TeamRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.Team
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.Organization
team requiredArgs object_ =
      Object.selectionForCompositeField "team" [ Argument.required "slug" requiredArgs.slug (Encode.string) ] (object_) (identity >> Decode.nullable)


type alias TeamsOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String
,privacy : OptionalArgument GithubNoFormat.Enum.TeamPrivacy.TeamPrivacy
,role : OptionalArgument GithubNoFormat.Enum.TeamRole.TeamRole
,query : OptionalArgument String
,userLogins : OptionalArgument (List String)
,orderBy : OptionalArgument GithubNoFormat.InputObject.TeamOrder
,ldapMapped : OptionalArgument Bool
,rootTeamsOnly : OptionalArgument Bool }

{-| A list of teams in this organization.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - privacy - If non-null, filters teams according to privacy
  - role - If non-null, filters teams according to whether the viewer is an admin or member on team
  - query - If non-null, filters teams with query on team name and team slug
  - userLogins - User logins to filter by
  - orderBy - Ordering options for teams returned from the connection
  - ldapMapped - If true, filters teams that are mapped to an LDAP Group (Enterprise only)
  - rootTeamsOnly - If true, restrict to only root teams

-}
teams : (TeamsOptionalArguments -> TeamsOptionalArguments)
-> SelectionSet decodesTo GithubNoFormat.Object.TeamConnection
-> SelectionSet decodesTo GithubNoFormat.Object.Organization
teams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, privacy = Absent, role = Absent, query = Absent, userLogins = Absent, orderBy = Absent, ldapMapped = Absent, rootTeamsOnly = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "privacy" filledInOptionals.privacy ((Encode.enum GithubNoFormat.Enum.TeamPrivacy.toString)), Argument.optional "role" filledInOptionals.role ((Encode.enum GithubNoFormat.Enum.TeamRole.toString)), Argument.optional "query" filledInOptionals.query (Encode.string), Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals.orderBy (GithubNoFormat.InputObject.encodeTeamOrder), Argument.optional "ldapMapped" filledInOptionals.ldapMapped (Encode.bool), Argument.optional "rootTeamsOnly" filledInOptionals.rootTeamsOnly (Encode.bool) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "teams" optionalArgs (object_) (identity)


{-| The HTTP path listing organization's teams
-}
teamsResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
teamsResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "teamsResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL listing organization's teams
-}
teamsUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
teamsUrl =
      Object.selectionForField "ScalarCodecs.Uri" "teamsUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this user
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.Organization
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Organization is adminable by the viewer.
-}
viewerCanAdminister : SelectionSet Bool GithubNoFormat.Object.Organization
viewerCanAdminister =
      Object.selectionForField "Bool" "viewerCanAdminister" [] (Decode.bool)


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : SelectionSet Bool GithubNoFormat.Object.Organization
viewerCanCreateProjects =
      Object.selectionForField "Bool" "viewerCanCreateProjects" [] (Decode.bool)


{-| Viewer can create repositories on this organization
-}
viewerCanCreateRepositories : SelectionSet Bool GithubNoFormat.Object.Organization
viewerCanCreateRepositories =
      Object.selectionForField "Bool" "viewerCanCreateRepositories" [] (Decode.bool)


{-| Viewer can create teams on this organization.
-}
viewerCanCreateTeams : SelectionSet Bool GithubNoFormat.Object.Organization
viewerCanCreateTeams =
      Object.selectionForField "Bool" "viewerCanCreateTeams" [] (Decode.bool)


{-| Viewer is an active member of this organization.
-}
viewerIsAMember : SelectionSet Bool GithubNoFormat.Object.Organization
viewerIsAMember =
      Object.selectionForField "Bool" "viewerIsAMember" [] (Decode.bool)


{-| The organization's public profile URL.
-}
websiteUrl : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.Uri) GithubNoFormat.Object.Organization
websiteUrl =
      Object.selectionForField "(Maybe ScalarCodecs.Uri)" "websiteUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
