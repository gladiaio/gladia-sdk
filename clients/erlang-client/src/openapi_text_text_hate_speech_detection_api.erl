-module(openapi_text_text_hate_speech_detection_api).

-export([apply_text_text_hate_speech_detection_post/1, apply_text_text_hate_speech_detection_post/2,
         get_versions_text_text_hate_speech_detection_get/1, get_versions_text_text_hate_speech_detection_get/2]).

-define(BASE_URL, "").

%% @doc Apply model for the hate-speech-detection task for a given models
%% 
-spec apply_text_text_hate_speech_detection_post(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_text_text_hate_speech_detection_post(Ctx) ->
    apply_text_text_hate_speech_detection_post(Ctx, #{}).

-spec apply_text_text_hate_speech_detection_post(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_text_text_hate_speech_detection_post(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/text/text/hate-speech-detection/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['text', 'model'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get list of models available for hate-speech-detection
%% 
-spec get_versions_text_text_hate_speech_detection_get(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_text_text_hate_speech_detection_get(Ctx) ->
    get_versions_text_text_hate_speech_detection_get(Ctx, #{}).

-spec get_versions_text_text_hate_speech_detection_get(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_text_text_hate_speech_detection_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/text/text/hate-speech-detection/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


