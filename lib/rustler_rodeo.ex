defmodule RustlerRodeo do
  use Rustler, otp_app: :rustler_rodeo, crate: "rustlerrodeo"

  @moduledoc """
  Documentation for `RustlerRodeo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RustlerRodeo.hello()
      :world

  """
  def hello do
    :world
  end

  def elixir_sort(items), do: Enum.sort(items)

  def rust_sort(_items), do: :erlang.nif_error(:nif_not_loaded)

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
