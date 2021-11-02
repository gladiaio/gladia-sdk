{-
   FastAPI
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: 0.1.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Request.TextTextSentencePairModeling exposing (applyTextTextSentencePairModelingPost, getVersionsTextTextSentencePairModelingGet)

import Data.HTTPValidationError as HTTPValidationError exposing (HTTPValidationError)
import Data.Object as Object exposing (Object)
import Dict
import Http
import Json.Decode as Decode
import Url.Builder as Url


basePath : String
basePath =
    "http://localhost"


applyTextTextSentencePairModelingPost :
    { onSend : Result Http.Error Object -> msg




    , sentence : Maybe (String)    , model : Maybe (String)
    }
    -> Cmd msg
applyTextTextSentencePairModelingPost params =
    Http.request
        { method = "POST"
        , headers = []
        , url = Url.crossOrigin basePath
            ["text", "text", "sentence-pair-modeling"]
            (List.filterMap identity [Maybe.map (Url.string "sentence" ) params.sentence, Maybe.map (Url.string "model" ) params.model])
        , body = Http.emptyBody
        , expect = Http.expectJson params.onSend Object.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }


getVersionsTextTextSentencePairModelingGet :
    { onSend : Result Http.Error Object -> msg





    }
    -> Cmd msg
getVersionsTextTextSentencePairModelingGet params =
    Http.request
        { method = "GET"
        , headers = []
        , url = Url.crossOrigin basePath
            ["text", "text", "sentence-pair-modeling"]
            []
        , body = Http.emptyBody
        , expect = Http.expectJson params.onSend Object.decoder
        , timeout = Just 30000
        , tracker = Nothing
        }
