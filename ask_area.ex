defmodule AskArea do

  def area() do
    input = IO.gets("R)ectangle, T)riangle, or E)llipse: ")
    shape = char_to_shape(String.first(input))
    {dimension1, dimension2} = case shape do
      :rectangle -> get_dimensions("width", "height")
      :triangle -> get_dimensions("base", "height")
      :ellipse -> get_dimensions("major radius", "minor radius")
      :unknown -> {0, 0}
    end
    calculate(shape, dimension1, dimension2)
  end

  def char_to_shape(char) do
    cond do
      String.upcase(char) == "R" -> :rectangle
      String.upcase(char) == "T" -> :triangle
      String.upcase(char) == "E" -> :ellipse
      true -> :unknown
    end
  end

  def get_number(prompt) do
    input = IO.gets("Enter #{prompt} > ")
    value = String.strip(input)
    {number, _} = Integer.parse(value)
    number
  end

  def get_dimensions(dimension1, dimension2) do
    n1 = get_number(dimension1)
    n2 = get_number(dimension2)
    {n1, n2}
  end

  def calculate(shape, dimension1, dimension2) do
    cond do
      shape == :unknown -> IO.puts("Sorry, that ain't a shape we can get an area for right now.")
      dimension1 < 0 or dimension2 < 0 -> IO.puts("Both dimensions need to be greater than zero")
      true -> Geom.area(shape, dimension1, dimension2)
    end
  end

end
