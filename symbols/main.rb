# useful when to use ruby symbols

user = { name: 'Fred', age: 10}
puts user.keys
puts user.keys.map(&:object_id)

user2 = { name: 'Fred', age: 10}
puts user2.keys
puts user2.keys.map(&:object_id)

class User
	attr_accessor :name, :age, :gender
end

jonatan = User.new
jonatan.name = "Jonatan"
jonatan.age = 20
p jonatan

puts "hello".respond_to?(:length) 	# true because length method exists on the "hello" string
puts "hello".respond_to?(:xyz) 			# false because this method doesnt exist on that object

def my_method(a, b, options)
	p options
end

my_method 1, 2, {:age => 63, :alive => true}
# if the last argument on a method is a hash, it doesn't have to be noted as a hash literal
my_method 1, 2, age: 63, alive: true

words = ["Hello", "world", "test"]

up_words = words.map { |word| word.upcase }
up_words_using_symbols = words.map(&:upcase)
puts up_words_using_symbols
puts up_words