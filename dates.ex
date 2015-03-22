defmodule Dates do
  def date_parts(date) do
    [year, month, day] = String.split(date, "-")
    [String.to_integer(year), String.to_integer(month), String.to_integer(day)]
  end
end
