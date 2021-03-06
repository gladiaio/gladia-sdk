# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FastAPI.Api.ImageTextOcr do
  @moduledoc """
  API calls for all endpoints tagged `ImageTextOcr`.
  """

  alias FastAPI.Connection
  import FastAPI.RequestBuilder


  @doc """
  Apply model for the ocr task for a given models

  ## Parameters

  - connection (FastAPI.Connection): Connection to server
  - image (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :source_language (String.t): 
    - :model (String.t): 
  ## Returns

  {:ok, %FastAPI.Model.Map{}} on success
  {:error, info} on failure
  """
  @spec apply_image_text_ocr_post(Tesla.Env.client, String.t, keyword()) :: {:ok, Map.t} | {:error, Tesla.Env.t}
  def apply_image_text_ocr_post(connection, image, opts \\ []) do
    optional_params = %{
      :"source_language" => :query,
      :"model" => :query
    }
    %{}
    |> method(:post)
    |> url("/image/text/ocr/")
    |> add_param(:file, :"image", image)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 422, %FastAPI.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get list of models available for ocr

  ## Parameters

  - connection (FastAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %FastAPI.Model.Map{}} on success
  {:error, info} on failure
  """
  @spec get_versions_image_text_ocr_get(Tesla.Env.client, keyword()) :: {:ok, Map.t} | {:error, Tesla.Env.t}
  def get_versions_image_text_ocr_get(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/image/text/ocr/")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false}
    ])
  end
end
