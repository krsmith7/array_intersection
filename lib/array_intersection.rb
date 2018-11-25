# Solution 1 - Nested loops
# def intersection(array1, array2)
#   # Instantiate new array for intersection
#   array_intersection = []
#
#   # Check if either array is empty or nil
#   if array1 != nil && array2 != nil
#
#     # Sort arrays? to do binary search?
#     array1.sort!
#     array2.sort!
#
#     # Set smaller array as values to compare
#     if array1.length < array2.length
#       # For each element in first array
#       array1.each do |element|
#         # Check against each of second array
#         TODO
#   # If find match, push to intersection array
#
#       end
#     end
#   end
#
#   # Return array of intersection
#   return array_intersection
# end


# Solution #2 -  Hash Table
def intersection(array1, array2)
  # Instantiate new array for intersection
  array_intersection = []

  # Check if either array is empty or nil
  if array1 != nil && array2 != nil
  # Set one array's elements to a hash table
    if array1.length < array2.length
      array2_hash = Hash.new
    # Add each element of second array to hash
      array2.each do |element|
        array2_hash[element] = "true"
      end
      # Check if first array elements are in hash
      array1.each do |element|
        if array2_hash.key?(element)
          # Add element to intersection if present
          array_intersection << element
        end
      end

    # If first array is not smaller
    else
      array1_hash = Hash.new

    # Add each element of second array to hash
      array1.each do |element|
        array1_hash[element] = "true"
      end

      # Check if first array elements are in hash
      array2.each do |element|
        if array1_hash.key?(element)
          # Add element to intersection if present
          array_intersection << element
        end
      end

    end
  end
  # Return array of intersection
  return array_intersection
end

# Should the arrays be sorted? 
