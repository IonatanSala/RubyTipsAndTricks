# ternary operator
# if the expression before the ? is true then
# x stores the value true else it will store the value
# after the semi-colon which is false
x = 5 > 4 ? true : false
puts x # true
# puts to the screen only if evaluates to true
puts "Something" if 1 == 1
# sorks the same for unless too
puts "Something" unless 1 == 2

# case statment
x = 5
case x
when 5 then puts "It's 5"
when 1 then puts "1"
else puts "I don't know x"
end	

# conditional assignment
# assing y if it hasn't already been assigned
y ||= "This is y if y has no value"

# random number between 10..20
puts rand(10..20)

puts "abc" << "def"

# check if something exits in a string
x = "this is Jonatan test string"
# if the string exists it will return the string, but if it doesn't it will return nil
puts x["Jonatan"] 

names = ["Jonatan", "Solomon", "Estera"]
ages = [20, 18, 16]

#[["Jonatan", 20], ["Solomon", 18], ["Estera", 16]]
p names.zip(ages)
# {"Jonatan"=>20, "Solomon"=>18, "Estera"=>16}
p Hash[names.zip(ages)]

locations = ["Spain", "France", "USA"]
p names.zip(ages, locations)

# convert something into array
# get array from 10 - 20, explode it into array
# handy when your being passed something and you dont know if its going to be an array
# you can force it into an array
puts [*10..20]
# you can also use Array()
puts Array(10..20)

# dealing with jjson
require 'json'
# puts to the screen in json format
j names.zip(ages, locations)
# pretty printing json format
jj names.zip(ages, locations)

# nice trick for working with regular expressions
str = "Jonatan Sala"
puts str[/(\w+) (\w+)/]	# Jonatan Sala
puts str[/(\w+) (\w+)/, 1]	# Jonatan
puts str[/(\w+) (\w+)/, 2]	# Sala
puts str[/(?<a>\w+) (?<b>\w+)/, :a]	# Jonatan
puts str[/(?<a>\w+) (?<b>\w+)/, :b]	# Sala
puts $~[:a] # Jonatan

puts /(?<a>\w+) (?<b>\w+)/ =~ str
puts a
puts b
