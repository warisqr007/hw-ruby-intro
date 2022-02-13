# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
  # YOUR CODE HERE
end

def max_2_sum arr
  arr = arr.sort
  arr.length() == 0 ? 0 : (arr.length()==1 ? arr[-1] : arr[-2]+arr[-1])
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.length() ==1
    return false
  end
  arr = arr.sort
  i=0
  j=arr.length()-1
  while i<j
    if arr[i] + arr[j] == n
      return true
    elsif (arr[i]+arr[j]) < n
      i = i+1
    elsif (arr[i]+arr[j]) > n
      j = j-1
    end
  end
  false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  "Hello, "+name
  # YOUR CODE HERE
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  if s.length == 1 and s[0] == '0'
    return true
  end
  !!(s =~ /\A(?=[10])/) and s[-1]=='0' and s[-2] == '0'
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if price <=0 or isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    if price <=0
      raise ArgumentError
    end
    @price = price
  end
  
  def isbn=(isbn)
    if isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
  end
  
  def price_as_string
    '$' + '%.2f' % @price
  end 
# YOUR CODE HERE
end
