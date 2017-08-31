# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.length == 0
  arr.inject(0) {|sum,e| sum+=e}
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  return arr[0]+arr[1] if arr.length == 2
  sorted_arr = arr.sort{|l,r| r <=> l}
  sorted_arr[0]+sorted_arr[1]
end

def sum_to_n? arr, n
  return false if arr.length <= 1
  found = false
  arr.combination(2){ |pair| if (pair[0]+pair[1]) == n; found = true; break; end }
  found
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
