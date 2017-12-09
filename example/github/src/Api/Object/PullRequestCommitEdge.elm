module Api.Object.PullRequestCommitEdge exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value
import Json.Decode as Decode
import Json.Encode as Encode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.PullRequestCommitEdge
build constructor =
    Object.object constructor


cursor : FieldDecoder String Api.Object.PullRequestCommitEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : Object node Api.Object.PullRequestCommit -> FieldDecoder node Api.Object.PullRequestCommitEdge
node object =
    Object.single "node" [] object
