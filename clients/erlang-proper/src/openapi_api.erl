-module(openapi_api).

-export([ apply_text_text_word_alignment_post/0
        , get_versions_text_text_word_alignment_get/0
        ]).

-define(BASE_URL, "").

%% @doc Apply model for the word-alignment task for a given models
%% 
-spec apply_text_text_word_alignment_post() ->
  openapi_utils:response().
apply_text_text_word_alignment_post() ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/text/text/word-alignment/"],
  Body        = [],
  ContentType = "text/plain",
  QueryString = [<<"input_string_language_1=">>, InputStringLanguage1, <<"&">>, <<"input_string_language_2=">>, InputStringLanguage2, <<"&">>, <<"model=">>, Model, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Get list of models available for word-alignment
%% 
-spec get_versions_text_text_word_alignment_get() ->
  openapi_utils:response().
get_versions_text_text_word_alignment_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/text/text/word-alignment/"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

