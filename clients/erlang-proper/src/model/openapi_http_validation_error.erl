-module(openapi_http_validation_error).

-include("openapi.hrl").

-export([openapi_http_validation_error/0]).

-export([openapi_http_validation_error/1]).

-export_type([openapi_http_validation_error/0]).

-type openapi_http_validation_error() ::
  [ {'detail', list(openapi_validation_error:openapi_validation_error()) }
  ].


openapi_http_validation_error() ->
    openapi_http_validation_error([]).

openapi_http_validation_error(Fields) ->
  Default = [ {'detail', list(openapi_validation_error:openapi_validation_error()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

