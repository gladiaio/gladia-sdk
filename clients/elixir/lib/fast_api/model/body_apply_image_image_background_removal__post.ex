# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule FastAPI.Model.BodyApplyImageImageBackgroundRemovalPost do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"image"
  ]

  @type t :: %__MODULE__{
    :"image" => String.t
  }
end

defimpl Poison.Decoder, for: FastAPI.Model.BodyApplyImageImageBackgroundRemovalPost do
  def decode(value, _options) do
    value
  end
end

