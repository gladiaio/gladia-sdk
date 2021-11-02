-module(openapi_body_apply_image_text_ocr__post).

-include("openapi.hrl").

-export([openapi_body_apply_image_text_ocr__post/0]).

-export([openapi_body_apply_image_text_ocr__post/1]).

-export_type([openapi_body_apply_image_text_ocr__post/0]).

-type openapi_body_apply_image_text_ocr__post() ::
  [ {'image', binary() }
  ].


openapi_body_apply_image_text_ocr__post() ->
    openapi_body_apply_image_text_ocr__post([]).

openapi_body_apply_image_text_ocr__post(Fields) ->
  Default = [ {'image', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

