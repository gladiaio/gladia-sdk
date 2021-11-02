-module(openapi_body_apply_image_image_colorization__post).

-export([encode/1]).

-export_type([openapi_body_apply_image_image_colorization__post/0]).

-type openapi_body_apply_image_image_colorization__post() ::
    #{ 'image' := binary()
     }.

encode(#{ 'image' := Image
        }) ->
    #{ 'image' => Image
     }.
