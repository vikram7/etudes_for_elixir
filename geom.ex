defmodule Geom do
  @doc """
  Calculates the area of a rectangle with sides of value length and width. These values default to 1 if not provided.
  """

  @spec area(number(), number()) :: number()

  def area(length \\ 1, width \\ 1) do
    length * width
  end

end
