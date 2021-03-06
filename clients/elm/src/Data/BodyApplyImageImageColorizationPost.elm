{-
   FastAPI
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   The version of the OpenAPI document: 0.1.0

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.BodyApplyImageImageColorizationPost exposing (BodyApplyImageImageColorizationPost, decoder, encode)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias BodyApplyImageImageColorizationPost =
    { image : String
    }


decoder : Decoder BodyApplyImageImageColorizationPost
decoder =
    Decode.succeed BodyApplyImageImageColorizationPost
        |> required "image" Decode.string



encode : BodyApplyImageImageColorizationPost -> Encode.Value
encode model =
    Encode.object
        [ ( "image", Encode.string model.image )

        ]


