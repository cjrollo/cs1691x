# When done, submit this entire file to the autograder.

# Part 1

def sum (ary)
  # YOUR CODE HERE
    ary.inject(0, :+)
end

def max_2_sum (ary)
  # YOUR CODE HERE
  sum(ary.sort.last(2))
end

def sum_to_n? (ary, val)
  # YOUR CODE 
  #return false when array has exactly 1 element
  if  ary.length == 1
    return false
  else
#    ary.product(ary).any? {|couple| sum(couple) == val
    ary.product(ary).any? {|c| sum(c.uniq) == val}
  end
end

# Part 2

def hello (name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? (s)
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? (s)
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize (isbn, price)
    
    raise ArgumentError,
      "illegal argumentarianism" if isbn.empty? or price <=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
      sprintf("$%2.2f", price)
  end
end