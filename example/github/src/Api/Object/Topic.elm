module Api.Object.Topic exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Value as Value
import Json.Decode as Decode
import Json.Encode as Encode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.Topic
build constructor =
    Object.object constructor


id : FieldDecoder String Api.Object.Topic
id =
    Object.fieldDecoder "id" [] Decode.string


name : FieldDecoder String Api.Object.Topic
name =
    Object.fieldDecoder "name" [] Decode.string


relatedTopics : FieldDecoder (List String) Api.Object.Topic
relatedTopics =
    Object.fieldDecoder "relatedTopics" [] (Decode.string |> Decode.list)
