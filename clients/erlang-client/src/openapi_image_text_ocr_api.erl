-module(openapi_image_text_ocr_api).

-export([apply_image_text_ocr_post/2, apply_image_text_ocr_post/3,
         get_versions_image_text_ocr_get/1, get_versions_image_text_ocr_get/2]).

-define(BASE_URL, "").

%% @doc Apply model for the ocr task for a given models
%% 
-spec apply_image_text_ocr_post(ctx:ctx(), binary()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_image_text_ocr_post(Ctx, Image) ->
    apply_image_text_ocr_post(Ctx, Image, #{}).

-spec apply_image_text_ocr_post(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_image_text_ocr_post(Ctx, Image, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/image/text/ocr/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['source_language', 'model'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"image">>, Image}]++openapi_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get list of models available for ocr
%% 
-spec get_versions_image_text_ocr_get(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_image_text_ocr_get(Ctx) ->
    get_versions_image_text_ocr_get(Ctx, #{}).

-spec get_versions_image_text_ocr_get(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_image_text_ocr_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/image/text/ocr/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


