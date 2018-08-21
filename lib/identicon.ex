defmodule Identicon do
  @moduledoc """
  Documentation for Identicon.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Identicon.hello()
      :world

  """
  def main(input) do
    input
    |> hash_input
  end

  def hash_input(input) do
    :crypto.hash(:md5, input)
    |> Base.encode16(case: :lower)
  end
end

IO.puts Identicon.main("crystal blue pursuasion")
