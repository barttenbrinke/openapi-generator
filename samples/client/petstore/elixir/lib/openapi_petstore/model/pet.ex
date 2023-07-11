# NOTE: This file is auto generated by OpenAPI Generator 7.0.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenapiPetstore.Model.Pet do
  @moduledoc """

  """

  @derive [Jason.Encoder]
  defstruct [
    :id,
    :category,
    :name,
    :photoUrls,
    :tags,
    :status
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :category => OpenapiPetstore.Model.Category.t | nil,
    :name => String.t,
    :photoUrls => [String.t],
    :tags => [OpenapiPetstore.Model.Tag.t] | nil,
    :status => String.t | nil
  }
end

defimpl Jason.Decoder, for: OpenapiPetstore.Model.Pet do
  import OpenapiPetstore.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:category, :struct, OpenapiPetstore.Model.Category, options)
    |> deserialize(:tags, :list, OpenapiPetstore.Model.Tag, options)
  end
end
