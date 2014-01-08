# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end
 
def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
 
  # get firsr number
  puts "Enter first number: "
  first_num = gets.chomp.to_f

  # get second number
  puts "Enter second number: "
  second_num = gets.chomp.to_f

  #Act on user choice
  puts case operation
  when 'a'
    first_num + second_num
  when 's'
    first_num - second_num
  when 'm'
    first_num * second_num
  when 'd'
    first_num / second_num
  end

  # print "Press Enter to continue."
  sleep(3)

end #Basic calculator ends

def advanced_calc
  #ask the user which operation they want to perform
  print "(p)ower, (s)quare root: "
  operation = gets.chomp.downcase

  #Ask user for a number
  print "Enter the number: "
  num = gets.chomp.to_f

  #Get the "to the power of" that the user wants
  if operation == 'p'
    print "Enter power: "
    power = gets.chomp.to_i
  end

  #Act on user choice
  puts case operation
  when 'p'
    num ** power
  when 's'
    Math.sqrt(num)
  end
    
  sleep(1)

end
 
 
# run the app...
 
response = menu
 
while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end
 
  response = menu
end