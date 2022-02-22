# calculator.rb

# ask the user for two numbers
# ask the user for an operation they'd like to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def operation_to_message(operator)
  case operator
  when '1' then 'Adding'
  when '2' then 'Subtracting'
  when '3' then 'Multiplying'
  when '4' then 'Dividing'
  end
end

prompt MESSAGES['welcome']
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do
  prompt "Hi #{name}!"

  number1 = ''
  number2 = ''

  loop do
    prompt 'What\'s the first number?'
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "Hmm... that doesn't look like a valid number."
    end
  end

  loop do
    prompt 'What\'s the second number?'
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt "Hmm... that doesn't look like a valid number."
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt
  operator = ''
  loop do
    operator = gets.chomp

    break if %w(1 2 3 4).include?(operator)

    prompt 'Please enter a valid operator.'
  end

  prompt "#{operation_to_message(operator)} the two numbers..."

  # the if condition does not create a block, so the result variable is visible
  # outside of it
  result = case operator
           when '1' then number1.to_i + number2.to_i
           when '2' then number1.to_i - number2.to_i
           when '3' then number1.to_i * number2.to_i
           when '4' then number1.to_f / number2.to_f
           end

  prompt "The result is #{result}!"

  prompt("Do you want to perform another calculation? (Y to calculate again")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end
