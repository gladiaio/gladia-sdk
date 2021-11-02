-module(openapi_validation_error).

-export([encode/1]).

-export_type([openapi_validation_error/0]).

-type openapi_validation_error() ::
    #{ 'loc' := list(),
       'msg' := binary(),
       'type' := binary()
     }.

encode(#{ 'loc' := Loc,
          'msg' := Msg,
          'type' := Type
        }) ->
    #{ 'loc' => Loc,
       'msg' => Msg,
       'type' => Type
     }.
