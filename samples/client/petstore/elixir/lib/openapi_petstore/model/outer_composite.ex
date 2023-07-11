# NOTE: This file is auto generated by OpenAPI Generator 7.0.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OpenapiPetstore.Model.OuterComposite do
  @moduledoc """
  
  """

  @derive [Jason.Encoder]
  defstruct [
    :my_number,
    :my_string,
    :my_boolean
  ]

  @type t :: %__MODULE__{
    :my_number => float() | nil,
    :my_string => String.t | nil,
    :my_boolean => boolean() | nil
  }
end

defimpl Jason.Decoder, for: OpenapiPetstore.Model.OuterComposite do
  def decode(value, _options) do
    value
  end
end

