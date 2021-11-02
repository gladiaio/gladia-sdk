-module(openapi_video_video_frame_interpolation_api).

-export([apply_video_video_frame_interpolation_post/2, apply_video_video_frame_interpolation_post/3,
         get_versions_video_video_frame_interpolation_get/1, get_versions_video_video_frame_interpolation_get/2]).

-define(BASE_URL, "").

%% @doc Apply model for the frame-interpolation task for a given models
%% 
-spec apply_video_video_frame_interpolation_post(ctx:ctx(), binary()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_video_video_frame_interpolation_post(Ctx, Video) ->
    apply_video_video_frame_interpolation_post(Ctx, Video, #{}).

-spec apply_video_video_frame_interpolation_post(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_video_video_frame_interpolation_post(Ctx, Video, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/video/video/frame-interpolation/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['model'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"video">>, Video}]++openapi_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get list of models available for frame-interpolation
%% 
-spec get_versions_video_video_frame_interpolation_get(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_video_video_frame_interpolation_get(Ctx) ->
    get_versions_video_video_frame_interpolation_get(Ctx, #{}).

-spec get_versions_video_video_frame_interpolation_get(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_video_video_frame_interpolation_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/video/video/frame-interpolation/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


