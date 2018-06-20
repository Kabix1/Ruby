number = 0
answer = gets.chomp
ary1 = []

def answer.remplus
  gsub!(/\++/, "+")
end

def answer.remtim
  gsub!(/\*+/, "*")
end


if answer =~ /\d+\*\d+\*\d+/

    array = answer.scan(/\d+\*\d+\*\d+/)
    until array.empty?
    answer.slice! array[0]    
    ary1  = array.shift.split(/\*/).map(&:to_i)
    number += ary1.inject { | total, element | total * element }
    end
end

answer.remtim
multiplication_array = answer.scan(/\d+\*\d+/)

until multiplication_array.empty?
 answer.slice! multiplication_array[0]
 x = multiplication_array.shift.split(/\*/).map(&:to_i)
 number += x.inject { | total, element | total * element }
end


answer.remplus


if answer[0] == "+"
  answer = answer[1..-1]
end

if answer.chars.last == "+"
answer = answer[0..-2]
end



divisionarray = answer.scan(/\d+\/\d+/)

until divisionarray.empty?
 answer.slice! divisionarray[0]
 k = divisionarray.shift.split(/\//).map(&:to_i)
 number += k.inject { |total, element| total.to_r / element.to_r }
 k.shift
end



if answer[0] == "+"
 answer = answer[1..-1]
end

if answer.chars.last == "+"
 answer = answer[0..-2]
end


subarrry = answer.scan(/\-\d+/)

until subarrry.empty?
 answer.slice! subarrry[0]
 o = subarrry.shift
 number += o.to_i
end



add_array = answer.split(/\+/)

until add_array.empty?
 answer.slice! add_array[0]
 x = add_array.shift
 number += x.to_i
end

puts number  
