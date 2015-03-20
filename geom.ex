# defmodule Geom do
#   @doc """
#   Calculates the area of a rectangle, triangle and ellipse based on length and width inputs. A rectangle's area is length * width, a triangle's is length * width / 2, and an ellipse is :math.pi * length * width. It also returns 0 for anything other than those three geometrical objects.
#   """

#   @spec area({atom(), number(), number()}) :: number()

#   def area({geometrical_object, length, width}) when length >= 0 and width >= 0 do
#     area(geometrical_object, length, width)
#   end

#   @spec area(atom(), number(), number()) :: number()

#   defp area(:rectangle, length, width) do
#     length * width
#   end

#   defp area(:triangle, length, width) do
#     length * width / 2
#   end

#   defp area(:ellipse, length, width) do
#     :math.pi() * length * width
#   end

#   defp area(_, _, _) do
#     0
#   end

# end

defmodule Geom do

  @spec area(atom(), number(), number()) :: number()

  def area(shape, length, width) do
    case shape do
      :rectangle -> length * width
      :triangle -> length * width / 2.0
      :ellipse -> :math.pi() * length * width
    end

  end

end
