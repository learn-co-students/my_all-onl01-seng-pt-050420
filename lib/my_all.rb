require 'pry'

def my_all?(collection)
    i = 0
    block_return_values = []
    while i < collection.length
        block_return_values << yield(collection[i]) #shovels the return value of the block into the array
        i += 1
    end

    if block_return_values.include?(false)
        false
    else
        true
    end
end