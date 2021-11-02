# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FastAPI.Api.TextTextNextWordPrediction do
  @moduledoc """
  API calls for all endpoints tagged `TextTextNextWordPrediction`.
  """

  alias FastAPI.Connection
  import FastAPI.RequestBuilder


  @doc """
  Apply model for the next-word-prediction task for a given models

  ## Parameters

  - connection (FastAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :sentence (String.t): 
    - :model (String.t): 
  ## Returns

  {:ok, %FastAPI.Model.Map{}} on success
  {:error, info} on failure
  """
  @spec apply_text_text_next_word_prediction_post(Tesla.Env.client, keyword()) :: {:ok, Map.t} | {:error, Tesla.Env.t}
  def apply_text_text_next_word_prediction_post(connection, opts \\ []) do
    optional_params = %{
      :"sentence" => :query,
      :"model" => :query
    }
    %{}
    |> method(:post)
    |> url("/text/text/next-word-prediction/")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 422, %FastAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get list of models available for next-word-prediction

  ## Parameters

  - connection (FastAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %FastAPI.Model.Map{}} on success
  {:error, info} on failure
  """
  @spec get_versions_text_text_next_word_prediction_get(Tesla.Env.client, keyword()) :: {:ok, Map.t} | {:error, Tesla.Env.t}
  def get_versions_text_text_next_word_prediction_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/text/text/next-word-prediction/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end
end
