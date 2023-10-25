alias RustlerRodeo

small_list = Enum.map(1..10, fn _ -> :rand.uniform(10_000_000) + 1 end)
medium_list = Enum.map(1..10_000, fn _ -> :rand.uniform(10_000_000) + 1 end)
large_list = Enum.map(1..10_000_000, fn _ -> :rand.uniform(10_000_000) + 1 end)

Benchee.run(
  %{
    "elixir_sort" => fn input -> Enum.sort(input) end,
    "rust_sort" => fn input -> RustlerRodeo.rust_sort(input) end
  },
  inputs: %{
    "Small" => small_list,
    "Medium" => medium_list,
    "Large" => large_list
  },
  time: 10,
  formatters: [
    Benchee.Formatters.Console
  ]
)
