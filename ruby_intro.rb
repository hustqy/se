# When done, submit this entire file.

# Part 1

def sum arr
  # YOUR CODE HERE
  res = 0
  arr.each do |num|
    res += num
  end
  return res
end

def max_2_sum arr
  # YOUR CODE HERE
    if arr.length == 0
        return 0
    end
    if arr.length == 1
        return arr[0]
    end
    num1,index1 = arr[0],0

    for i in 0...(arr.length) do
        if arr[i] > num1
            num1 = arr[i]
            index1 = i
        end
    end
    num2 = arr[0] < arr[1] ? arr[0] : arr[1]
    for i in 0...arr.length
        if i == index1
            next
        elsif  arr[i] > num2 
            num2 = arr[i]
        end
    end
    return num1 + num2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
    dict = Hash.new()
    for index in  0...arr.length  
        num = arr[index]
        if dict.has_key?(n-num)
            return  true
        else
            dict[num] = index 
        end
    end
    return false
end                                

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello,"+ name
end

def starts_with_consonant? s
  # YOUR CODE HERE
    if s.match /^\s*\w/im
        if s.match /[^aeiou]/im
            return true
        end
    end
    return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if (s.to_i(2) != 0)
        num = s.to_i(2)
        if num % 4 ==0
            return true
        end
    end
    return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn, :price 
    def initialize(isbn,price)
        @isbn = isbn
        @price = price
        if isbn.length == 0
            raise ArgumentError.new("isbn string is empty")
        end
        if price <= 0
            raise ArgumentError.new("price is below zero")
        end
    end
    def price_as_string() 
        price = "%.2f" % @price.to_f
        puts "$"+price.to_s
        return "$"+price.to_s
    end
    def get_isbn()
        return @isbn
    end
    def get_price()
        return @price
    end
end

