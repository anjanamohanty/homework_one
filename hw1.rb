inputs = []
user_input = " "

puts "Enter a number or word"
user_input = gets.chomp

if ((user_input.to_i.to_s == user_input) || (user_input.to_f.to_s == user_input))

  inputs[0] = user_input
  count = 1
  while user_input
    puts "Enter another number"
    user_input = gets.chomp
    if user_input.empty?
      break
    elsif ((user_input.to_f.to_s == user_input) || (user_input.to_i.to_s == user_input))
      inputs[count] = user_input
      count += 1
    else
      puts "Sorry not a number...ending"
      break
    end
  end

  sum = 0
  for i in 0..inputs.length
    sum += inputs[i].to_f
  end

  average = (sum.to_f / inputs.length)

  puts "Sum is: " + sum.to_s
  puts "Average is: " + average.to_s

else

  long_string = user_input
  while user_input
    puts "Enter another word"
    user_input = gets.chomp
    if user_input.empty?
      break
    elsif ((user_input.to_f.to_s == user_input) || (user_input.to_i.to_s == user_input))
      puts "Sorry not a word...ending"
      break
    end
    long_string += user_input
  end

  puts "Your result is: " + long_string

end
