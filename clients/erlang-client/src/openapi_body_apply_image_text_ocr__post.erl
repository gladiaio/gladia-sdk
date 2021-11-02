-module(openapi_body_apply_image_text_ocr__post).

-export([encode/1]).

-export_type([openapi_body_apply_image_text_ocr__post/0]).

-type openapi_body_apply_image_text_ocr__post() ::
    #{ 'image' := binary()
     }.

encode(#{ 'image' := Image
        }) ->
    #{ 'image' => Image
     }.
