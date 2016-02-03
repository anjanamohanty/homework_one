inputs = []
user_input = " "

puts "Enter a number or word"
user_input = gets.chomp
count = 0

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

  sum = 0.0
  for i in 0...inputs.length
    sum += inputs[i].to_f
  end

  average = (sum.to_f / inputs.length)

  stdev_sum = 0.0
  for i in 0...inputs.length
    stdev_sum += (inputs[i].to_f - average) ** 2
  end

  stdev = Math.sqrt(stdev_sum / (inputs.length-1))

  sorted_inputs = inputs.sort
  median = 0.0
  if (inputs.length % 2) == 1
    median = sorted_inputs[(inputs.length/2).to_i]
  else
    median = (sorted_inputs[inputs.length / 2].to_f + sorted_inputs[(inputs.length / 2) + 1].to_f) / 2
  end

  puts "Sum is: " + sum.to_s
  puts "Average is: " + average.to_s
  puts "Standard Deviation is: " + stdev.to_s
  puts "Median is: " + median.to_s

else

  inputs[0] = user_input
  count = 1
  while user_input
    puts "Enter another word"
    user_input = gets.chomp
    if user_input.empty?
      break
    elsif ((user_input.to_f.to_s == user_input) || (user_input.to_i.to_s == user_input))
      puts "Sorry not a word...ending"
      break
    end
    inputs[count] = user_input
    count += 1
  end

  concatenated_string = ""
  sum_of_lengths = 0
  e_counter = 0
  for i in 0...inputs.length
    concatenated_string += inputs[i]
    sum_of_lengths += inputs[i].length
    for a in 0...inputs[i].length
      if inputs[i][a] == "e"
        e_counter += 1
      end
    end
  end

  average_length = sum_of_lengths / inputs.length

  puts "Concatenated string is: " + concatenated_string
  puts "Average length of inputs is: " + average_length.to_s
  puts "The letter 'e' was used " + e_counter.to_s + " time(s)"

end
