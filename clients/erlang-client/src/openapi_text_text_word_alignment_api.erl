-module(openapi_text_text_word_alignment_api).

-export([apply_text_text_word_alignment_post/1, apply_text_text_word_alignment_post/2,
         get_versions_text_text_word_alignment_get/1, get_versions_text_text_word_alignment_get/2]).

-define(BASE_URL, "").

%% @doc Apply model for the word-alignment task for a given models
%% 
-spec apply_text_text_word_alignment_post(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_text_text_word_alignment_post(Ctx) ->
    apply_text_text_word_alignment_post(Ctx, #{}).

-spec apply_text_text_word_alignment_post(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
apply_text_text_word_alignment_post(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/text/text/word-alignment/"],
    QS = lists:flatten([])++openapi_utils:optional_params(['input_string_language_1', 'input_string_language_2', 'model'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get list of models available for word-alignment
%% 
-spec get_versions_text_text_word_alignment_get(ctx:ctx()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_text_text_word_alignment_get(Ctx) ->
    get_versions_text_text_word_alignment_get(Ctx, #{}).

-spec get_versions_text_text_word_alignment_get(ctx:ctx(), maps:map()) -> {ok, maps:map(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_versions_text_text_word_alignment_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/text/text/word-alignment/"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


