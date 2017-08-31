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
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.length == 0
  /^[a-z&&[^aeiou]]/i =~ s
end

def binary_multiple_of_4? s
  return false unless /^[01]+$/ =~ s
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn,price)
    raise ArgumentError.new("ISBN must be a String") if isbn.class != String
    raise ArgumentError.new("Price must be a Float") if price.class != Float && price.class != Fixnum
    raise ArgumentError.new("ISBN must not be empty") if isbn.empty?
    raise ArgumentError.new("Price must be > 0") if price <= 0
    
    self.isbn  = isbn
    self.price = price
  end
  
  def price_as_string
    sprintf("$%.2f",self.price)
  end
end
