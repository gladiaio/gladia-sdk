-module(openapi_body_apply_video_video_frame_interpolation__post).

-include("openapi.hrl").

-export([openapi_body_apply_video_video_frame_interpolation__post/0]).

-export([openapi_body_apply_video_video_frame_interpolation__post/1]).

-export_type([openapi_body_apply_video_video_frame_interpolation__post/0]).

-type openapi_body_apply_video_video_frame_interpolation__post() ::
  [ {'video', binary() }
  ].


openapi_body_apply_video_video_frame_interpolation__post() ->
    openapi_body_apply_video_video_frame_interpolation__post([]).

openapi_body_apply_video_video_frame_interpolation__post(Fields) ->
  Default = [ {'video', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

