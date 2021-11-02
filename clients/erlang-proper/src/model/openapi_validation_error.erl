-module(openapi_validation_error).

-include("openapi.hrl").

-export([openapi_validation_error/0]).

-export([openapi_validation_error/1]).

-export_type([openapi_validation_error/0]).

-type openapi_validation_error() ::
  [ {'loc', list(binary()) }
  | {'msg', binary() }
  | {'type', binary() }
  ].


openapi_validation_error() ->
    openapi_validation_error([]).

openapi_validation_error(Fields) ->
  Default = [ {'loc', list(binary()) }
            , {'msg', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

