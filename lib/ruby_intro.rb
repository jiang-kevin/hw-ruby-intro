# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  output = 0
  array.each do |num|
    output += num
  end
  output
end

def max_2_sum(array)
  max_2 = array.max(2)
  sum(max_2)
end

def sum_to_n? arr, n
  arr.each_with_index do |a, i|
    arr.each_with_index do |b, j|
      if (i != j)
        if (a + b == n)
          return true
        end
      end
    end
  end
  
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  /^[qwrtypsdfghjklzxcvbnm]/i =~ s
end

def binary_multiple_of_4? s
  if (/^[01]+$/ =~ s)
    s.to_i(2) % 4 == 0
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    if (isbn == "")
      raise ArgumentError.new()
    else
      @isbn = isbn
    end
  end
  
  def price
    @price
  end
  
  def price=(price)
    if (price <= 0)
      raise ArgumentError.new()
    else
      @price = price
    end
  end
  
  def price_as_string()
    sprintf('$%.2f', @price)
  end
end
