# Solution #2 -  Hash Table
def intersection(array1, array2)
  # Instantiate new array for intersection
  array_intersection = []

  # Check if either array is empty or nil
  if array1 != nil && array2 != nil
  # Set one array's elements to a hash table
  # Could compare arrays, then set whichever is smaller to a new variable. Would be unnecessary variables?
    if array1.length < array2.length
      array2_hash = Hash.new
    # Add each element of second array to hash
      array2.each do |element|
        array2_hash[element] = 1
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
        array1_hash[element] = 1
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

# Time complexity is 0(n) since a new hash is created that is the length of one of the arrays.
# Space complexity is 0(n).

# Should the arrays be sorted?



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
# Time complexity is O(n*m) since at worst each element of the first array  of length n is checked against m elements of the second
# Space complexity is O(n) because three new arrays are created of length n at max (if arrays are sorted) or one new array that is at largest the length of the smaller array n (if unsorted).
