def ping_pong(number)
  x = 0
  array = []
  if (number.class == String)
    array.push("Please enter a number")
  elsif (number <= 0)
    array.push("Please enter a number greater than zero")
  elsif (number.class == Integer)
    until ( x >= number.to_i )
    x = x + 1
      if x % 15 == 0 
        array.push("ping-pong")
      elsif x % 3 == 0
        array.push("ping")
      elsif x % 5 == 0
        array.push("pong")
      else
        array.push(x)
      end
    end
  end
  array
end