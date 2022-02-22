# payment_calculator.rb

# this program is designed to take 3 pieces of information: the OG loan
# amount, the annual percentage rate (APR), and the loan duration, and it will
# return the monthly interest rate, the loan duration in months, and the
# monthly payment amount

require 'yaml'
MESSAGES = YAML.load_file('payment_calc_msgs.yml')

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def calculate_payment(og_loan_amt, mo_percentage_rate, dur_in_mos)
  og_loan_amt.to_f * (mo_percentage_rate /
  (1 - (1 + mo_percentage_rate)**(-dur_in_mos)))
end

puts MESSAGES['welcome']

og_loan_amt = nil
loop do
  print MESSAGES['get_loan_amt']
  og_loan_amt = gets.chomp

  if valid_number?(og_loan_amt)
    break
  else
    puts MESSAGES['invalid_num']
  end
end

annual_percentage_rate = nil
loop do
  print MESSAGES['get_apr']
  annual_percentage_rate = gets.chomp

  if valid_number?(annual_percentage_rate)
    break
  else
    puts MESSAGES['invalid_num']
  end
end

duration_in_yrs = nil
loop do
  print MESSAGES['get_loan_dur']
  duration_in_yrs = gets.chomp

  if valid_number?(duration_in_yrs)
    break
  else
    puts MESSAGES['invalid_num']
  end
end

confirmation_prompt = <<-MSG
You entered:
  original loan amount = $#{og_loan_amt}
  annual percentage rate = #{annual_percentage_rate}%
  loan duration in years = #{duration_in_yrs}
MSG

puts "\n" + confirmation_prompt + "\n"

puts MESSAGES['calculating']
sleep(2)

monthly_percentage_rate = annual_percentage_rate.to_f / 100 / 12
duration_in_mos = duration_in_yrs.to_i * 12
payment_amt = calculate_payment(og_loan_amt, monthly_percentage_rate,
                                duration_in_mos)

output_prompt = <<-MSG
Here is your loan information:
  monthly interest rate = #{monthly_percentage_rate.ceil(5)}%
  loan duration in months = #{duration_in_mos}
  monthly payment = $#{payment_amt.ceil(2)}
MSG

puts "\n" + output_prompt + "\n"
