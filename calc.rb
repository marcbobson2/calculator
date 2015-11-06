#gather number
#gather operator
#operator either ends or allows for input of another #
#need to figure out best place to check for div/0

calc_array=[]
operation=""

valid_operators=["a","s","d","m","x"]
continue_loop='yes'


loop do
  puts "Enter number:"
  number=gets.chomp
  calc_array<<number.to_f
  

loop do
  puts "Enter operation [a,s,d,m,x]"
  operation=gets.chomp.downcase
  if valid_operators.include?(operation)
    break
  end
end 
  calc_array<<operation
  #now check to see if we should exit the input loop
  if operation == 'x' then
    break
  end
end

#now array is fully loaded and ready for calculation

#first check to see if calc even possible
if calc_array.length<=2 then
  puts "you've only entered 1 number. nothing to calculate!"
  exit
end


running_total=calc_array.shift

while calc_array.length>0 do
  operator=calc_array.shift
  next_val=calc_array.shift

  case operator
  when "a"
    running_total += next_val
  when "s"
    running_total -= next_val
  when "m"
    running_total *= next_val
  when "d"
    if next_val==0 then 
      puts "you have a divsion by zero error, we cannot continue!"
      exit
    end
    running_total /= next_val
  when "x"
    break
  else
    puts "you should never see this message!"
  end

end #end of while loop

puts running_total












  