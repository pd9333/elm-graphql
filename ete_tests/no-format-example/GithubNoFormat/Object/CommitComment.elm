-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Object.CommitComment exposing (..)

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
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.CommitComment
author object____ =
      Object.selectionForCompositeField "author" [] (object____) (Basics.identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet GithubNoFormat.Enum.CommentAuthorAssociation.CommentAuthorAssociation GithubNoFormat.Object.CommitComment
authorAssociation =
      Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] (GithubNoFormat.Enum.CommentAuthorAssociation.decoder)


{-| Identifies the comment body.
-}
body : SelectionSet String GithubNoFormat.Object.CommitComment
body =
      Object.selectionForField "String" "body" [] (Decode.string)


{-| Identifies the comment body rendered to HTML.
-}
bodyHTML : SelectionSet GithubNoFormat.ScalarCodecs.Html GithubNoFormat.Object.CommitComment
bodyHTML =
      Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| Identifies the commit associated with the comment, if the commit exists.
-}
commit : SelectionSet decodesTo GithubNoFormat.Object.Commit
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.CommitComment
commit object____ =
      Object.selectionForCompositeField "commit" [] (object____) (Basics.identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.CommitComment
createdAt =
      Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool GithubNoFormat.Object.CommitComment
createdViaEmail =
      Object.selectionForField "Bool" "createdViaEmail" [] (Decode.bool)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GithubNoFormat.Object.CommitComment
databaseId =
      Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo GithubNoFormat.Interface.Actor
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.CommitComment
editor object____ =
      Object.selectionForCompositeField "editor" [] (object____) (Basics.identity >> Decode.nullable)


id : SelectionSet GithubNoFormat.ScalarCodecs.Id GithubNoFormat.Object.CommitComment
id =
      Object.selectionForField "ScalarCodecs.Id" "id" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.CommitComment
lastEditedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Identifies the file path associated with the comment.
-}
path : SelectionSet (Maybe String) GithubNoFormat.Object.CommitComment
path =
      Object.selectionForField "(Maybe String)" "path" [] (Decode.string |> Decode.nullable)


{-| Identifies the line position associated with the comment.
-}
position : SelectionSet (Maybe Int) GithubNoFormat.Object.CommitComment
position =
      Object.selectionForField "(Maybe Int)" "position" [] (Decode.int |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe GithubNoFormat.ScalarCodecs.DateTime) GithubNoFormat.Object.CommitComment
publishedAt =
      Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo GithubNoFormat.Object.ReactionGroup
 -> SelectionSet (Maybe (List decodesTo)) GithubNoFormat.Object.CommitComment
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
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitComment
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
 -> SelectionSet decodesTo GithubNoFormat.Object.CommitComment
repository object____ =
      Object.selectionForCompositeField "repository" [] (object____) (Basics.identity)


{-| The HTTP path permalink for this commit comment.
-}
resourcePath : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.CommitComment
resourcePath =
      Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GithubNoFormat.ScalarCodecs.DateTime GithubNoFormat.Object.CommitComment
updatedAt =
      Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GithubNoFormat.ScalarCodecs.codecs |> GithubNoFormat.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL permalink for this commit comment.
-}
url : SelectionSet GithubNoFormat.ScalarCodecs.Uri GithubNoFormat.Object.CommitComment
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
 -> SelectionSet (Maybe decodesTo) GithubNoFormat.Object.CommitComment
userContentEdits fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs____ =
            [ Argument.optional "first" filledInOptionals____.first (Encode.int), Argument.optional "after" filledInOptionals____.after (Encode.string), Argument.optional "last" filledInOptionals____.last (Encode.int), Argument.optional "before" filledInOptionals____.before (Encode.string) ]
                |> List.filterMap Basics.identity
    in
      Object.selectionForCompositeField "userContentEdits" optionalArgs____ (object____) (Basics.identity >> Decode.nullable)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : SelectionSet Bool GithubNoFormat.Object.CommitComment
viewerCanDelete =
      Object.selectionForField "Bool" "viewerCanDelete" [] (Decode.bool)


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool GithubNoFormat.Object.CommitComment
viewerCanReact =
      Object.selectionForField "Bool" "viewerCanReact" [] (Decode.bool)


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool GithubNoFormat.Object.CommitComment
viewerCanUpdate =
      Object.selectionForField "Bool" "viewerCanUpdate" [] (Decode.bool)


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List GithubNoFormat.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) GithubNoFormat.Object.CommitComment
viewerCannotUpdateReasons =
      Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (GithubNoFormat.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool GithubNoFormat.Object.CommitComment
viewerDidAuthor =
      Object.selectionForField "Bool" "viewerDidAuthor" [] (Decode.bool)
