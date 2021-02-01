-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql
module GithubNoFormat.Mutation exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import GithubNoFormat.Object
import GithubNoFormat.Interface
import GithubNoFormat.Union
import GithubNoFormat.Scalar
import GithubNoFormat.InputObject
import GithubNoFormat.ScalarCodecs
import Graphql.Internal.Builder.Object as Object
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Json.Decode as Decode exposing (Decoder)
import Graphql.Internal.Encode as Encode exposing (Value)

type alias AcceptTopicSuggestionRequiredArguments = { input : GithubNoFormat.InputObject.AcceptTopicSuggestionInput }

{-| Applies a suggested topic to the repository.
-}
acceptTopicSuggestion : AcceptTopicSuggestionRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AcceptTopicSuggestionPayload
-> SelectionSet (Maybe decodesTo) RootMutation
acceptTopicSuggestion requiredArgs object_ =
      Object.selectionForCompositeField "acceptTopicSuggestion" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAcceptTopicSuggestionInput) ] (object_) (identity >> Decode.nullable)


type alias AddCommentRequiredArguments = { input : GithubNoFormat.InputObject.AddCommentInput }

{-| Adds a comment to an Issue or Pull Request.
-}
addComment : AddCommentRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddCommentPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addComment requiredArgs object_ =
      Object.selectionForCompositeField "addComment" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddCommentInput) ] (object_) (identity >> Decode.nullable)


type alias AddProjectCardRequiredArguments = { input : GithubNoFormat.InputObject.AddProjectCardInput }

{-| Adds a card to a ProjectColumn. Either `contentId` or `note` must be provided but **not** both.
-}
addProjectCard : AddProjectCardRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddProjectCardPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addProjectCard requiredArgs object_ =
      Object.selectionForCompositeField "addProjectCard" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddProjectCardInput) ] (object_) (identity >> Decode.nullable)


type alias AddProjectColumnRequiredArguments = { input : GithubNoFormat.InputObject.AddProjectColumnInput }

{-| Adds a column to a Project.
-}
addProjectColumn : AddProjectColumnRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddProjectColumnPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addProjectColumn requiredArgs object_ =
      Object.selectionForCompositeField "addProjectColumn" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddProjectColumnInput) ] (object_) (identity >> Decode.nullable)


type alias AddPullRequestReviewRequiredArguments = { input : GithubNoFormat.InputObject.AddPullRequestReviewInput }

{-| Adds a review to a Pull Request.
-}
addPullRequestReview : AddPullRequestReviewRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddPullRequestReviewPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addPullRequestReview requiredArgs object_ =
      Object.selectionForCompositeField "addPullRequestReview" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddPullRequestReviewInput) ] (object_) (identity >> Decode.nullable)


type alias AddPullRequestReviewCommentRequiredArguments = { input : GithubNoFormat.InputObject.AddPullRequestReviewCommentInput }

{-| Adds a comment to a review.
-}
addPullRequestReviewComment : AddPullRequestReviewCommentRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddPullRequestReviewCommentPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addPullRequestReviewComment requiredArgs object_ =
      Object.selectionForCompositeField "addPullRequestReviewComment" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddPullRequestReviewCommentInput) ] (object_) (identity >> Decode.nullable)


type alias AddReactionRequiredArguments = { input : GithubNoFormat.InputObject.AddReactionInput }

{-| Adds a reaction to a subject.
-}
addReaction : AddReactionRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddReactionPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addReaction requiredArgs object_ =
      Object.selectionForCompositeField "addReaction" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddReactionInput) ] (object_) (identity >> Decode.nullable)


type alias AddStarRequiredArguments = { input : GithubNoFormat.InputObject.AddStarInput }

{-| Adds a star to a Starrable.
-}
addStar : AddStarRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.AddStarPayload
-> SelectionSet (Maybe decodesTo) RootMutation
addStar requiredArgs object_ =
      Object.selectionForCompositeField "addStar" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeAddStarInput) ] (object_) (identity >> Decode.nullable)


type alias CreateProjectRequiredArguments = { input : GithubNoFormat.InputObject.CreateProjectInput }

{-| Creates a new project.
-}
createProject : CreateProjectRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.CreateProjectPayload
-> SelectionSet (Maybe decodesTo) RootMutation
createProject requiredArgs object_ =
      Object.selectionForCompositeField "createProject" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeCreateProjectInput) ] (object_) (identity >> Decode.nullable)


type alias DeclineTopicSuggestionRequiredArguments = { input : GithubNoFormat.InputObject.DeclineTopicSuggestionInput }

{-| Rejects a suggested topic for the repository.
-}
declineTopicSuggestion : DeclineTopicSuggestionRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.DeclineTopicSuggestionPayload
-> SelectionSet (Maybe decodesTo) RootMutation
declineTopicSuggestion requiredArgs object_ =
      Object.selectionForCompositeField "declineTopicSuggestion" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeDeclineTopicSuggestionInput) ] (object_) (identity >> Decode.nullable)


type alias DeleteProjectRequiredArguments = { input : GithubNoFormat.InputObject.DeleteProjectInput }

{-| Deletes a project.
-}
deleteProject : DeleteProjectRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.DeleteProjectPayload
-> SelectionSet (Maybe decodesTo) RootMutation
deleteProject requiredArgs object_ =
      Object.selectionForCompositeField "deleteProject" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeDeleteProjectInput) ] (object_) (identity >> Decode.nullable)


type alias DeleteProjectCardRequiredArguments = { input : GithubNoFormat.InputObject.DeleteProjectCardInput }

{-| Deletes a project card.
-}
deleteProjectCard : DeleteProjectCardRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.DeleteProjectCardPayload
-> SelectionSet (Maybe decodesTo) RootMutation
deleteProjectCard requiredArgs object_ =
      Object.selectionForCompositeField "deleteProjectCard" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeDeleteProjectCardInput) ] (object_) (identity >> Decode.nullable)


type alias DeleteProjectColumnRequiredArguments = { input : GithubNoFormat.InputObject.DeleteProjectColumnInput }

{-| Deletes a project column.
-}
deleteProjectColumn : DeleteProjectColumnRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.DeleteProjectColumnPayload
-> SelectionSet (Maybe decodesTo) RootMutation
deleteProjectColumn requiredArgs object_ =
      Object.selectionForCompositeField "deleteProjectColumn" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeDeleteProjectColumnInput) ] (object_) (identity >> Decode.nullable)


type alias DeletePullRequestReviewRequiredArguments = { input : GithubNoFormat.InputObject.DeletePullRequestReviewInput }

{-| Deletes a pull request review.
-}
deletePullRequestReview : DeletePullRequestReviewRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.DeletePullRequestReviewPayload
-> SelectionSet (Maybe decodesTo) RootMutation
deletePullRequestReview requiredArgs object_ =
      Object.selectionForCompositeField "deletePullRequestReview" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeDeletePullRequestReviewInput) ] (object_) (identity >> Decode.nullable)


type alias DismissPullRequestReviewRequiredArguments = { input : GithubNoFormat.InputObject.DismissPullRequestReviewInput }

{-| Dismisses an approved or rejected pull request review.
-}
dismissPullRequestReview : DismissPullRequestReviewRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.DismissPullRequestReviewPayload
-> SelectionSet (Maybe decodesTo) RootMutation
dismissPullRequestReview requiredArgs object_ =
      Object.selectionForCompositeField "dismissPullRequestReview" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeDismissPullRequestReviewInput) ] (object_) (identity >> Decode.nullable)


type alias LockLockableRequiredArguments = { input : GithubNoFormat.InputObject.LockLockableInput }

{-| Lock a lockable object
-}
lockLockable : LockLockableRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.LockLockablePayload
-> SelectionSet (Maybe decodesTo) RootMutation
lockLockable requiredArgs object_ =
      Object.selectionForCompositeField "lockLockable" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeLockLockableInput) ] (object_) (identity >> Decode.nullable)


type alias MoveProjectCardRequiredArguments = { input : GithubNoFormat.InputObject.MoveProjectCardInput }

{-| Moves a project card to another place.
-}
moveProjectCard : MoveProjectCardRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.MoveProjectCardPayload
-> SelectionSet (Maybe decodesTo) RootMutation
moveProjectCard requiredArgs object_ =
      Object.selectionForCompositeField "moveProjectCard" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeMoveProjectCardInput) ] (object_) (identity >> Decode.nullable)


type alias MoveProjectColumnRequiredArguments = { input : GithubNoFormat.InputObject.MoveProjectColumnInput }

{-| Moves a project column to another place.
-}
moveProjectColumn : MoveProjectColumnRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.MoveProjectColumnPayload
-> SelectionSet (Maybe decodesTo) RootMutation
moveProjectColumn requiredArgs object_ =
      Object.selectionForCompositeField "moveProjectColumn" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeMoveProjectColumnInput) ] (object_) (identity >> Decode.nullable)


type alias RemoveOutsideCollaboratorRequiredArguments = { input : GithubNoFormat.InputObject.RemoveOutsideCollaboratorInput }

{-| Removes outside collaborator from all repositories in an organization.
-}
removeOutsideCollaborator : RemoveOutsideCollaboratorRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.RemoveOutsideCollaboratorPayload
-> SelectionSet (Maybe decodesTo) RootMutation
removeOutsideCollaborator requiredArgs object_ =
      Object.selectionForCompositeField "removeOutsideCollaborator" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeRemoveOutsideCollaboratorInput) ] (object_) (identity >> Decode.nullable)


type alias RemoveReactionRequiredArguments = { input : GithubNoFormat.InputObject.RemoveReactionInput }

{-| Removes a reaction from a subject.
-}
removeReaction : RemoveReactionRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.RemoveReactionPayload
-> SelectionSet (Maybe decodesTo) RootMutation
removeReaction requiredArgs object_ =
      Object.selectionForCompositeField "removeReaction" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeRemoveReactionInput) ] (object_) (identity >> Decode.nullable)


type alias RemoveStarRequiredArguments = { input : GithubNoFormat.InputObject.RemoveStarInput }

{-| Removes a star from a Starrable.
-}
removeStar : RemoveStarRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.RemoveStarPayload
-> SelectionSet (Maybe decodesTo) RootMutation
removeStar requiredArgs object_ =
      Object.selectionForCompositeField "removeStar" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeRemoveStarInput) ] (object_) (identity >> Decode.nullable)


type alias RequestReviewsRequiredArguments = { input : GithubNoFormat.InputObject.RequestReviewsInput }

{-| Set review requests on a pull request.
-}
requestReviews : RequestReviewsRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.RequestReviewsPayload
-> SelectionSet (Maybe decodesTo) RootMutation
requestReviews requiredArgs object_ =
      Object.selectionForCompositeField "requestReviews" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeRequestReviewsInput) ] (object_) (identity >> Decode.nullable)


type alias SubmitPullRequestReviewRequiredArguments = { input : GithubNoFormat.InputObject.SubmitPullRequestReviewInput }

{-| Submits a pending pull request review.
-}
submitPullRequestReview : SubmitPullRequestReviewRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.SubmitPullRequestReviewPayload
-> SelectionSet (Maybe decodesTo) RootMutation
submitPullRequestReview requiredArgs object_ =
      Object.selectionForCompositeField "submitPullRequestReview" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeSubmitPullRequestReviewInput) ] (object_) (identity >> Decode.nullable)


type alias UpdateProjectRequiredArguments = { input : GithubNoFormat.InputObject.UpdateProjectInput }

{-| Updates an existing project.
-}
updateProject : UpdateProjectRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdateProjectPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updateProject requiredArgs object_ =
      Object.selectionForCompositeField "updateProject" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdateProjectInput) ] (object_) (identity >> Decode.nullable)


type alias UpdateProjectCardRequiredArguments = { input : GithubNoFormat.InputObject.UpdateProjectCardInput }

{-| Updates an existing project card.
-}
updateProjectCard : UpdateProjectCardRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdateProjectCardPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updateProjectCard requiredArgs object_ =
      Object.selectionForCompositeField "updateProjectCard" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdateProjectCardInput) ] (object_) (identity >> Decode.nullable)


type alias UpdateProjectColumnRequiredArguments = { input : GithubNoFormat.InputObject.UpdateProjectColumnInput }

{-| Updates an existing project column.
-}
updateProjectColumn : UpdateProjectColumnRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdateProjectColumnPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updateProjectColumn requiredArgs object_ =
      Object.selectionForCompositeField "updateProjectColumn" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdateProjectColumnInput) ] (object_) (identity >> Decode.nullable)


type alias UpdatePullRequestReviewRequiredArguments = { input : GithubNoFormat.InputObject.UpdatePullRequestReviewInput }

{-| Updates the body of a pull request review.
-}
updatePullRequestReview : UpdatePullRequestReviewRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdatePullRequestReviewPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updatePullRequestReview requiredArgs object_ =
      Object.selectionForCompositeField "updatePullRequestReview" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdatePullRequestReviewInput) ] (object_) (identity >> Decode.nullable)


type alias UpdatePullRequestReviewCommentRequiredArguments = { input : GithubNoFormat.InputObject.UpdatePullRequestReviewCommentInput }

{-| Updates a pull request review comment.
-}
updatePullRequestReviewComment : UpdatePullRequestReviewCommentRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdatePullRequestReviewCommentPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updatePullRequestReviewComment requiredArgs object_ =
      Object.selectionForCompositeField "updatePullRequestReviewComment" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdatePullRequestReviewCommentInput) ] (object_) (identity >> Decode.nullable)


type alias UpdateSubscriptionRequiredArguments = { input : GithubNoFormat.InputObject.UpdateSubscriptionInput }

{-| Updates viewers repository subscription state.
-}
updateSubscription : UpdateSubscriptionRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdateSubscriptionPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updateSubscription requiredArgs object_ =
      Object.selectionForCompositeField "updateSubscription" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdateSubscriptionInput) ] (object_) (identity >> Decode.nullable)


type alias UpdateTopicsRequiredArguments = { input : GithubNoFormat.InputObject.UpdateTopicsInput }

{-| Replaces the repository's topics with the given topics.
-}
updateTopics : UpdateTopicsRequiredArguments
-> SelectionSet decodesTo GithubNoFormat.Object.UpdateTopicsPayload
-> SelectionSet (Maybe decodesTo) RootMutation
updateTopics requiredArgs object_ =
      Object.selectionForCompositeField "updateTopics" [ Argument.required "input" requiredArgs.input (GithubNoFormat.InputObject.encodeUpdateTopicsInput) ] (object_) (identity >> Decode.nullable)
