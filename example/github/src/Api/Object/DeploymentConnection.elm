module Api.Object.DeploymentConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value
import Json.Decode as Decode
import Json.Encode as Encode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.DeploymentConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.DeploymentEdge -> FieldDecoder (List edges) Api.Object.DeploymentConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.Deployment -> FieldDecoder (List nodes) Api.Object.DeploymentConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.DeploymentConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.DeploymentConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
