-module(openapi_body_apply_image_text_asciify__post).

-export([encode/1]).

-export_type([openapi_body_apply_image_text_asciify__post/0]).

-type openapi_body_apply_image_text_asciify__post() ::
    #{ 'image' := binary()
     }.

encode(#{ 'image' := Image
        }) ->
    #{ 'image' => Image
     }.
