def is_multiple_of_3_or_5?(current_number)
  if current_number % 3 == 0 || current_number % 5 == 0
    return true
  else
    return false
  end

end


def sum_of_3_or_5_multiples(final_number)
  
  if final_number.is_a? String
    "Yo ! Je ne prends que les entiers naturels. TG."   
  elsif final_number < 0
    "Yo ! Je ne prends que les entiers naturels. TG."
  elsif final_number.is_a? Float
    "Yo ! Je ne prends que les entiers naturels. TG."

  else
    numbers = Array(0..(final_number-1))
    multiples = Array.new
    i=0
    final_sum=0
    for i in numbers
        if is_multiple_of_3_or_5?(i)
          multiples.push(i)            
        end
      end
      multiples.each { |i| final_sum+=i}
      return final_sum
  end
end


    