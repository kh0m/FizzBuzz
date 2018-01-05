class Calculator < ApplicationRecord

  def calculate_fizz_buzz num
    if (num % 3 == 0) && (num % 5 == 0)
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      ""
    end
  end
  
end