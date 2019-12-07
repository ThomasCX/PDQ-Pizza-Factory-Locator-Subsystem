defmodule Order do
  @moduledoc """
  This struct formats order data. As far as the factory locator subsytem is concerned
  only the location/coordinates of each order is important.
  """
  defstruct coordinates: nil

  @doc """
  The Order constructor function, returns an Order struct
  """
  def constructor(coordinates) when is_map(coordinates) do
    coordinates.__struct__ == Coordinates ||
      raise "invalid Coordinates struct provided"

    {:ok,
     %Order{
       :coordinates => coordinates |> Map.from_struct()
     }}
  end
end
