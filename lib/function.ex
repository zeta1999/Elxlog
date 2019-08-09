
defmodule Elxfunc do
  def ack(0, n), do: n + 1
  def ack(m, 0), do: ack(m - 1, 1)
  def ack(m, n), do: ack(m - 1, ack(m, n - 1))

  def tarai(x, y, z) do
    cond do
      x <= y -> y
      true -> tarai(tarai(x - 1, y, z), tarai(y - 1, z, x), tarai(z - 1, x, y))
    end
  end

  def in_the_park() do
    if :rand.uniform(2) == 1 do
      IO.puts("woof")
    else
      IO.puts("ruff")
    end
    in_the_park()
  end

end