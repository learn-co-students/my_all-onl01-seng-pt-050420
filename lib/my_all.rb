require 'pry'

# Iterate through each element in the passed-in collection using the simple lower-level iterator 'while'. 

def my_all?(collection)
  i = 0 
  block_return_values = []
  while i < collection.length
  
  # declare our array & yield each element in the collection
  
    block_return_values << yield(collection[i])
    i = i + 1 
  end
  
  # add an ' #include? ' method to determine the return value of the my_all? method.
  
  if block_return_values.include?(false)
    false 
  else 
    true 
  end
end