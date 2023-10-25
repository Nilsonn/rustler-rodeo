defmodule RustlerRodeoTest do
  use ExUnit.Case
  doctest RustlerRodeo

  test "greets the world" do
    assert RustlerRodeo.hello() == :world
  end

  describe "rust_sort" do
    test "rust_sort sorts a list of integers" do
      assert RustlerRodeo.rust_sort([1, 8, 2, 2, 3, 1, 4, 4, 5]) == [1, 1, 2, 2, 3, 4, 4, 5, 8]
    end

    test "rust_sort throws an ArgumentError on other inputs" do
      assert_raise ArgumentError, fn -> RustlerRodeo.rust_sort(["a", "d", "e", "f"]) end
    end
  end
end
