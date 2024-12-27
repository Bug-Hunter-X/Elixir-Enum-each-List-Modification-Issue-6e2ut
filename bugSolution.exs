```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.filter
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list) # Output: [1, 2, 4, 5]

# Solution 2: Using List.delete and reassigning
list = List.delete(list, 3)
IO.inspect(list) # Output: [1, 2, 4, 5]

#Alternative approach (using Enum.reduce, less efficient for large lists)
list = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end) |> Enum.reverse()
IO.inspect(list) #Output: [1,2,4,5]
```