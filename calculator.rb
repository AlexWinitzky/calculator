
def new_num(answer)
  puts "Pick another modifier:\n+, -, *, /"
  print "> "
  op_input = gets.strip
    
  puts "Another number?"
  print "> "
  second_num = gets.strip.to_i
  computation(op_input, answer, second_num)
end

def choice(answer)
  puts "Wow, what an unbelievable result!"
  puts "1) Continue\n2) Clear Calculator\n3) Quit?"
  choice = gets.strip
    case choice
    when '1'
      new_num(answer)
    when '2'
      puts "Resetting values..calculating...aaaaaand...done"
      run_calc
    else
      exit(0)
    end
end

def run_calc
  puts "Using your keyboard, enter the first number into the computer console"
  print "> "
  first_num = gets.strip.to_i

  puts "Oh wow, interesting choice.\nWhich operator did you want to use?\n+, -, *, /"
  print "> "
  op_input = gets.strip

  puts "Nice, that's a pretty sweet operator.\nNow, again using your computer keyboard, go ahead and enter in a second number"
  print "> "
  second_num = gets.strip.to_i
  computation(op_input, first_num, second_num)
end

  def computation(op_input, first_num, second_num)
    case op_input
    when "+"
      answer = (first_num + second_num)
      puts "#{first_num} + #{second_num} = #{answer}"
      choice(answer)
    when "-"
      answer = (first_num - second_num)
      puts "#{first_num} - #{second_num} = #{answer}"
      choice(answer)
    when "*"
      answer = (first_num * second_num)
      puts "#{first_num} * #{second_num} = #{answer}"
      choice(answer)
    when "/"
      answer = (first_num / second_num)
      puts "#{first_num} / #{second_num} = #{answer}"
      choice(answer)
    else
      puts "Invalid Modifier"
      run_calc
    end
  end

run_calc