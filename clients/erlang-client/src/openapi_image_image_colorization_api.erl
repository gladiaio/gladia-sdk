-module(openapi_image_image_colorization_api).

-export([apply_image_image_colorization_post/2, apply_image_image_colorization_post/3,
         get_versions_image_image_colorization_get/1, get_versions_image_image_colorization_get/2]).

-define(BASE_URL, "").

%% @doc Apply model for the colorization task for a given models
%% 
-spec apply_image_image_colorization_post(ctx:ctx(), binary()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_image_image_colorization_post(Ctx, Image) ->
    apply_image_image_colorization_post(Ctx, Image, #{}).

-spec apply_image_image_colorization_post(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_image_image_colorization_post(Ctx, Image, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/image/image/colorization/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['model'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"image">>, Image}]++openapi_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get list of models available for colorization
%% 
-spec get_versions_image_image_colorization_get(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_image_image_colorization_get(Ctx) ->
    get_versions_image_image_colorization_get(Ctx, #{}).

-spec get_versions_image_image_colorization_get(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_image_image_colorization_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/image/image/colorization/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


