require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end #while loop
  if block_return_values.include?(false)
    false
  else
    true
  end #if/else statement
end #my_all? method