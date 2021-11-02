-module(openapi_body_apply_image_image_restoration__post).

-export([encode/1]).

-export_type([openapi_body_apply_image_image_restoration__post/0]).

-type openapi_body_apply_image_image_restoration__post() ::
    #{ 'image' := binary()
     }.

encode(#{ 'image' := Image
        }) ->
    #{ 'image' => Image
     }.
