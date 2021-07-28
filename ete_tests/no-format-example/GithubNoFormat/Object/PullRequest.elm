-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.PullRequest exposing (..)

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
import GithubNoFormat.Enum.ReactionContent
import GithubNoFormat.Enum.PullRequestReviewState
import GithubNoFormat.Enum.LockReason
import GithubNoFormat.Enum.CommentAuthorAssociation
import GithubNoFormat.Enum.MergeableState
import GithubNoFormat.Enum.PullRequestState
import GithubNoFormat.Enum.CommentCannotUpdateReason
import GithubNoFormat.Enum.SubscriptionState
{-| Reason that the conversation was locked.
-}
activeLockReason : SelectionSet (Maybe GithubNoFormat.Enum.LockReason.LockReason) GithubNoFormat.Object.PullRequest
activeLockReason =
      Object.selectionForField "(Maybe Enum.LockReason.LockReason)" "activeLockReason" [] (GithubNoFormat.Enum.LockReason.decoder |> Decode.nullable)


{-| The number of additions in this pull request.
-}
additions : SelectionSet Int GithubNoFormat.Object.PullRequest
additions =
      Object.selectionForField "Int" "additions" [] (Decode.int)


type alias AssigneesOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of Users assigned to this object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
assignees : (AssigneesOptionalArguments -> AssigneesOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.UserConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
assignees fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "assignees" optionalArgs____ (object____) (Basics.identity)


{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
author object____ =
      Object.selectionForCompositeField "author" [] (object____) (Basics.identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet GithubNoFormat.Enum.CommentAuthorAssociation.CommentAuthorAssociation GithubNoFormat.Object.PullRequest
authorAssociation =
      Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] (GithubNoFormat.Enum.CommentAuthorAssociation.decoder)


{-| Identifies the base Ref associated with the pull request.
-}
baseRef : SelectionSet decodesTo GithubNoFormat.Object.Ref
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
baseRef object____ =
      Object.selectionForCompositeField "baseRef" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
-}
baseRefName : SelectionSet String GithubNoFormat.Object.PullRequest
baseRefName =
      Object.selectionForField "String" "baseRefName" [] (Decode.string)


{-| Identifies the oid of the base ref associated with the pull request, even if the ref has been deleted.
-}
baseRefOid : SelectionSet GithubNoFormat.ScalarCodecs.GitObjectID GithubNoFormat.Object.PullRequest
baseRefOid =
      Object.selectionForField "ScalarCodecs.GitObjectID" "baseRefOid" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| Identifies the body of the pull request.
-}
body : SelectionSet String GithubNoFormat.Object.PullRequest
body =
      Object.selectionForField "String" "body" [] (Decode.string)


{-| Identifies the body of the pull request rendered to HTML.
-}
bodyHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.PullRequest
bodyHTML =
      Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the body of the pull request rendered to text.
-}
bodyText : SelectionSet String GithubNoFormat.Object.PullRequest
bodyText =
      Object.selectionForField "String" "bodyText" [] (Decode.string)


{-| The number of changed files in this pull request.
-}
changedFiles : SelectionSet Int GithubNoFormat.Object.PullRequest
changedFiles =
      Object.selectionForField "Int" "changedFiles" [] (Decode.int)


{-| `true` if the pull request is closed
-}
closed : SelectionSet Bool GithubNoFormat.Object.PullRequest
closed =
      Object.selectionForField "Bool" "closed" [] (Decode.bool)


{-| Identifies the date and time when the object was closed.
-}
closedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.PullRequest
closedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "closedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


type alias CommentsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of comments associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.IssueCommentConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
comments fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "comments" optionalArgs____ (object____) (Basics.identity)


type alias CommitsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of commits present in this pull request's head branch not present in the base branch.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
commits : (CommitsOptionalArguments -> CommitsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequestCommitConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
commits fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "commits" optionalArgs____ (object____) (Basics.identity)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.PullRequest
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool GithubNoFormat.Object.PullRequest
createdViaEmail =
      Object.selectionForField "Bool" "createdViaEmail" [] (Decode.bool)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.PullRequest
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The number of deletions in this pull request.
-}
deletions : SelectionSet Int GithubNoFormat.Object.PullRequest
deletions =
      Object.selectionForField "Int" "deletions" [] (Decode.int)


{-| The actor who edited this pull request's body.
-}
editor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
editor object____ =
      Object.selectionForCompositeField "editor" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the head Ref associated with the pull request.
-}
headRef : SelectionSet decodesTo GithubNoFormat.Object.Ref
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
headRef object____ =
      Object.selectionForCompositeField "headRef" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
-}
headRefName : SelectionSet String GithubNoFormat.Object.PullRequest
headRefName =
      Object.selectionForField "String" "headRefName" [] (Decode.string)


{-| Identifies the oid of the head ref associated with the pull request, even if the ref has been deleted.
-}
headRefOid : SelectionSet GithubNoFormat.ScalarCodecs.GitObjectID GithubNoFormat.Object.PullRequest
headRefOid =
      Object.selectionForField "ScalarCodecs.GitObjectID" "headRefOid" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecGitObjectID |> .decoder)


{-| The repository associated with this pull request's head Ref.
-}
headRepository : SelectionSet decodesTo GithubNoFormat.Object.Repository
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
headRepository object____ =
      Object.selectionForCompositeField "headRepository" [] (object____) (Basics.identity >> Decode.nullable)


{-| The owner of the repository associated with this pull request's head Ref.
-}
headRepositoryOwner : SelectionSet decodesTo GithubNoFormat.Interface.RepositoryOwner
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
headRepositoryOwner object____ =
      Object.selectionForCompositeField "headRepositoryOwner" [] (object____) (Basics.identity >> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.PullRequest
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The head and base repositories are different.
-}
isCrossRepository : SelectionSet Bool GithubNoFormat.Object.PullRequest
isCrossRepository =
      Object.selectionForField "Bool" "isCrossRepository" [] (Decode.bool)


type alias LabelsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of labels associated with the object.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
labels : (LabelsOptionalArguments -> LabelsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.LabelConnection
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
labels fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "labels" optionalArgs____ (object____) (Basics.identity >> Decode.nullable)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.PullRequest
lastEditedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| `true` if the pull request is locked
-}
locked : SelectionSet Bool GithubNoFormat.Object.PullRequest
locked =
      Object.selectionForField "Bool" "locked" [] (Decode.bool)


{-| The commit that was created when this pull request was merged.
-}
mergeCommit : SelectionSet decodesTo GithubNoFormat.Object.Commit
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
mergeCommit object____ =
      Object.selectionForCompositeField "mergeCommit" [] (object____) (Basics.identity >> Decode.nullable)


{-| Whether or not the pull request can be merged based on the existence of merge conflicts.
-}
mergeable : SelectionSet GithubNoFormat.Enum.MergeableState.MergeableState GithubNoFormat.Object.PullRequest
mergeable =
      Object.selectionForField "Enum.MergeableState.MergeableState" "mergeable" [] (GithubNoFormat.Enum.MergeableState.decoder)


{-| Whether or not the pull request was merged.
-}
merged : SelectionSet Bool GithubNoFormat.Object.PullRequest
merged =
      Object.selectionForField "Bool" "merged" [] (Decode.bool)


{-| The date and time that the pull request was merged.
-}
mergedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.PullRequest
mergedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "mergedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the milestone associated with the pull request.
-}
milestone : SelectionSet decodesTo GithubNoFormat.Object.Milestone
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
milestone object____ =
      Object.selectionForCompositeField "milestone" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the pull request number.
-}
number : SelectionSet Int GithubNoFormat.Object.PullRequest
number =
      Object.selectionForField "Int" "number" [] (Decode.int)


type alias ParticipantsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of Users that are participating in the Pull Request conversation.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
participants : (ParticipantsOptionalArguments -> ParticipantsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.UserConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
participants fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "participants" optionalArgs____ (object____) (Basics.identity)


{-| The commit that GitHub automatically generated to test if this pull request could be merged. This field will not return a value if the pull request is merged, or if the test merge commit is still being generated. See the `mergeable` field for more details on the mergeability of the pull request.
-}
potentialMergeCommit : SelectionSet decodesTo GithubNoFormat.Object.Commit
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
potentialMergeCommit object____ =
      Object.selectionForCompositeField "potentialMergeCommit" [] (object____) (Basics.identity >> Decode.nullable)


type alias ProjectCardsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| List of project cards associated with this pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
projectCards : (ProjectCardsOptionalArguments -> ProjectCardsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ProjectCardConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
projectCards fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "projectCards" optionalArgs____ (object____) (Basics.identity)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.PullRequest
publishedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo GithubNoFormat.Object.ReactionGroup
 -> SelectionSet (Maybe (List decodesTo)) GithubNoFormat.Object.PullRequest
reactionGroups object____ =
      Object.selectionForCompositeField "reactionGroups" [] (object____) (Basics.identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String
 , content : OptionalArgument GithubNoFormat.Enum.ReactionContent.ReactionContent
 , orderBy : OptionalArgument GithubNoFormat.InputObject.ReactionOrder }

{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ReactionConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
reactions fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string), Argument.optional "content" filledInOptionals____.content ((Encode.enum GithubNoFormat.Enum.ReactionContent.toString)), Argument.optional "orderBy" filledInOptionals____.orderBy (GithubNoFormat.InputObject.encodeReactionOrder) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "reactions" optionalArgs____ (object____) (Basics.identity)


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo GithubNoFormat.Object.Repository
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
repository object____ =
      Object.selectionForCompositeField "repository" [] (object____) (Basics.identity)


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.PullRequest
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP path for reverting this pull request.
-}
revertResourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.PullRequest
revertResourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "revertResourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for reverting this pull request.
-}
revertUrl : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.PullRequest
revertUrl =
      Object.selectionForField "ScalarCodecs.Uri" "revertUrl" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias ReviewRequestsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of review requests associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
reviewRequests : (ReviewRequestsOptionalArguments -> ReviewRequestsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.ReviewRequestConnection
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
reviewRequests fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "reviewRequests" optionalArgs____ (object____) (Basics.identity >> Decode.nullable)


type alias ReviewsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String
 , states : OptionalArgument (List GithubNoFormat.Enum.PullRequestReviewState.PullRequestReviewState)
 , author : OptionalArgument String }

{-| A list of reviews associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - states - A list of states to filter the reviews.
  - author - Filter by author of the review.

-}
reviews : (ReviewsOptionalArguments -> ReviewsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequestReviewConnection
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
reviews fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, states = Absent, author = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string), Argument.optional "states" filledInOptionals____.states ((Encode.enum GithubNoFormat.Enum.PullRequestReviewState.toString) |> Encode.list), Argument.optional "author" filledInOptionals____.author (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "reviews" optionalArgs____ (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the state of the pull request.
-}
state : SelectionSet GithubNoFormat.Enum.PullRequestState.PullRequestState GithubNoFormat.Object.PullRequest
state =
      Object.selectionForField "Enum.PullRequestState.PullRequestState" "state" [] (GithubNoFormat.Enum.PullRequestState.decoder)


{-| A list of reviewer suggestions based on commit history and past review comments.
-}
suggestedReviewers : SelectionSet decodesTo GithubNoFormat.Object.SuggestedReviewer
 -> SelectionSet (List (Maybe decodesTo)) GithubNoFormat.Object.PullRequest
suggestedReviewers object____ =
      Object.selectionForCompositeField "suggestedReviewers" [] (object____) (Basics.identity >> Decode.nullable >> Decode.list)


type alias TimelineOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String
 , since : OptionalArgument GithubNoFormat.ScalarCodecs.DateTime }

{-| A list of events, comments, commits, etc. associated with the pull request.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - since - Allows filtering timeline events by a `since` timestamp.

-}
timeline : (TimelineOptionalArguments -> TimelineOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequestTimelineConnection
 -> SelectionSet decodesTo GithubNoFormat.Object.PullRequest
timeline fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent, since = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string), Argument.optional "since" filledInOptionals____.since ((GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapEncoder .codecDateTime)) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "timeline" optionalArgs____ (object____) (Basics.identity)


{-| Identifies the pull request title.
-}
title : SelectionSet String GithubNoFormat.Object.PullRequest
title =
      Object.selectionForField "String" "title" [] (Decode.string)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.PullRequest
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this pull request.
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.PullRequest
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias UserContentEditsOptionalArguments = { first : OptionalArgument Int
 , after : OptionalArgument String
 , last : OptionalArgument Int
 , before : OptionalArgument String }

{-| A list of edits to this content.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments)
 -> SelectionSet decodesTo GithubNoFormat.Object.UserContentEditConnection
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.PullRequest
userContentEdits fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "userContentEdits" optionalArgs____ (object____) (Basics.identity >> Decode.nullable)


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool GithubNoFormat.Object.PullRequest
viewerCanReact =
      Object.selectionForField "Bool" "viewerCanReact" [] (Decode.bool)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool GithubNoFormat.Object.PullRequest
viewerCanSubscribe =
      Object.selectionForField "Bool" "viewerCanSubscribe" [] (Decode.bool)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool GithubNoFormat.Object.PullRequest
viewerCanUpdate =
      Object.selectionForField "Bool" "viewerCanUpdate" [] (Decode.bool)


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List GithubNoFormat.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) GithubNoFormat.Object.PullRequest
viewerCannotUpdateReasons =
      Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (GithubNoFormat.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool GithubNoFormat.Object.PullRequest
viewerDidAuthor =
      Object.selectionForField "Bool" "viewerDidAuthor" [] (Decode.bool)


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet GithubNoFormat.Enum.SubscriptionState.SubscriptionState GithubNoFormat.Object.PullRequest
viewerSubscription =
      Object.selectionForField "Enum.SubscriptionState.SubscriptionState" "viewerSubscription" [] (GithubNoFormat.Enum.SubscriptionState.decoder)
