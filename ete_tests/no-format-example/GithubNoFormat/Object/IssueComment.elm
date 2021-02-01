-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.IssueComment exposing (..)

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
import GithubNoFormat.Enum.CommentAuthorAssociation
import GithubNoFormat.Enum.CommentCannotUpdateReason
{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo GithubNoFormat.Interface.Actor
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.IssueComment
author object_ =
      Object.selectionForCompositeField "author" [] (object_) (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet GithubNoFormat.Enum.CommentAuthorAssociation.CommentAuthorAssociation GithubNoFormat.Object.IssueComment
authorAssociation =
      Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] (GithubNoFormat.Enum.CommentAuthorAssociation.decoder)


{-| Identifies the comment body.
-}
body : SelectionSet String GithubNoFormat.Object.IssueComment
body =
      Object.selectionForField "String" "body" [] (Decode.string)


{-| The comment body rendered to HTML.
-}
bodyHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.IssueComment
bodyHTML =
      Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the body of the issue rendered to text.
-}
bodyText : SelectionSet String GithubNoFormat.Object.IssueComment
bodyText =
      Object.selectionForField "String" "bodyText" [] (Decode.string)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.IssueComment
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool GithubNoFormat.Object.IssueComment
createdViaEmail =
      Object.selectionForField "Bool" "createdViaEmail" [] (Decode.bool)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.IssueComment
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.IssueComment
editor object_ =
      Object.selectionForCompositeField "editor" [] (object_) (identity >> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.IssueComment
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the issue associated with the comment.
-}
issue : SelectionSet decodesTo GithubNoFormat.Object.Issue
-> SelectionSet decodesTo GithubNoFormat.Object.IssueComment
issue object_ =
      Object.selectionForCompositeField "issue" [] (object_) (identity)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.IssueComment
lastEditedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.IssueComment
publishedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Returns the pull request associated with the comment, if this comment was made on a
pull request.

-}
pullRequest : SelectionSet decodesTo GithubNoFormat.Object.PullRequest
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.IssueComment
pullRequest object_ =
      Object.selectionForCompositeField "pullRequest" [] (object_) (identity >> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo GithubNoFormat.Object.ReactionGroup
-> SelectionSet (Maybe (List decodesTo)) GithubNoFormat.Object.IssueComment
reactionGroups object_ =
      Object.selectionForCompositeField "reactionGroups" [] (object_) (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String
,content : OptionalArgument GithubNoFormat.Enum.ReactionContent.ReactionContent
,orderBy : OptionalArgument GithubNoFormat.InputObject.ReactionOrder }

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
-> SelectionSet decodesTo GithubNoFormat.Object.IssueComment
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string), Argument.optional "content" filledInOptionals.content ((Encode.enum GithubNoFormat.Enum.ReactionContent.toString)), Argument.optional "orderBy" filledInOptionals.orderBy (GithubNoFormat.InputObject.encodeReactionOrder) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "reactions" optionalArgs (object_) (identity)


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo GithubNoFormat.Object.Repository
-> SelectionSet decodesTo GithubNoFormat.Object.IssueComment
repository object_ =
      Object.selectionForCompositeField "repository" [] (object_) (identity)


{-| The HTTP path for this issue comment
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.IssueComment
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.IssueComment
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL for this issue comment
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.IssueComment
url =
      Object.selectionForField "ScalarCodecs.Uri" "url" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias UserContentEditsOptionalArguments = { first : OptionalArgument Int
,after : OptionalArgument String
,last : OptionalArgument Int
,before : OptionalArgument String }

{-| A list of edits to this content.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments)
-> SelectionSet decodesTo GithubNoFormat.Object.UserContentEditConnection
-> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.IssueComment
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first (Encode.int), Argument.optional "after" filledInOptionals.after (Encode.string), Argument.optional "last" filledInOptionals.last (Encode.int), Argument.optional "before" filledInOptionals.before (Encode.string) ]
                |> List.filterMap identity
    in
      Object.selectionForCompositeField "userContentEdits" optionalArgs (object_) (identity >> Decode.nullable)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : SelectionSet Bool GithubNoFormat.Object.IssueComment
viewerCanDelete =
      Object.selectionForField "Bool" "viewerCanDelete" [] (Decode.bool)


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool GithubNoFormat.Object.IssueComment
viewerCanReact =
      Object.selectionForField "Bool" "viewerCanReact" [] (Decode.bool)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool GithubNoFormat.Object.IssueComment
viewerCanUpdate =
      Object.selectionForField "Bool" "viewerCanUpdate" [] (Decode.bool)


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List GithubNoFormat.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) GithubNoFormat.Object.IssueComment
viewerCannotUpdateReasons =
      Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (GithubNoFormat.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool GithubNoFormat.Object.IssueComment
viewerDidAuthor =
      Object.selectionForField "Bool" "viewerDidAuthor" [] (Decode.bool)
