# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FastAPI.Model.HttpValidationError do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"detail"
  ]

  @type t :: %__MODULE__{
    :"detail" => [ValidationError] | nil
  }
end

defimpl Poison.Decoder, for: FastAPI.Model.HttpValidationError do
  import FastAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"detail", :list, FastAPI.Model.ValidationError, options)
  end
end

