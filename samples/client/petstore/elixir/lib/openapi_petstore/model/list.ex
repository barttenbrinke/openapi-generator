# NOTE: This file is auto generated by OpenAPI Generator 7.0.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenapiPetstore.Model.List do
  @moduledoc """

  """

  @derive [Jason.Encoder]
  defstruct [
    :"123-list"
  ]

  @type t :: %__MODULE__{
    :"123-list" => String.t | nil
  }
end

defimpl Jason.Decoder, for: OpenapiPetstore.Model.List do
  def decode(value, _options) do
    value
  end
end
