-module(openapi_api).

-export([ apply_video_video_frame_interpolation_post/1
        , get_versions_video_video_frame_interpolation_get/0
        ]).

-define(BASE_URL, "").

%% @doc Apply model for the frame-interpolation task for a given models
%% 
-spec apply_video_video_frame_interpolation_post(binary()) ->
  openapi_utils:response().
apply_video_video_frame_interpolation_post(Video) ->
  Method      = post,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/video/video/frame-interpolation/"],
  Body        = {form, [{<<"video">>, Video]++openapi_utils:optional_params([], _OptionalParams)},
  ContentType = hd(["multipart/form-data"]),
  QueryString = [<<"model=">>, Model, <<"&">>],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path, <<"?">>, QueryString], jsx:encode(Body), ContentType).

%% @doc Get list of models available for frame-interpolation
%% 
-spec get_versions_video_video_frame_interpolation_get() ->
  openapi_utils:response().
get_versions_video_video_frame_interpolation_get() ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/video/video/frame-interpolation/"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

