-module(openapi_http_validation_error).

-export([encode/1]).

-export_type([openapi_http_validation_error/0]).

-type openapi_http_validation_error() ::
    #{ 'detail' => list()
     }.

encode(#{ 'detail' := Detail
        }) ->
    #{ 'detail' => Detail
     }.
