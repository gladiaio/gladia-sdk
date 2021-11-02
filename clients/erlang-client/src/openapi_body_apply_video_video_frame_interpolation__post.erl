-module(openapi_body_apply_video_video_frame_interpolation__post).

-export([encode/1]).

-export_type([openapi_body_apply_video_video_frame_interpolation__post/0]).

-type openapi_body_apply_video_video_frame_interpolation__post() ::
    #{ 'video' := binary()
     }.

encode(#{ 'video' := Video
        }) ->
    #{ 'video' => Video
     }.
