# EVEN OR ODD
number = 10
# returns a bool based on if the number is even or not
puts number.even?	


# handy array methods
arr = [6, 5, 2, 7, 1, 4, 10]
arr[-1]	# accessing elements from the end of the list
arr.first	# first element in the array
arr.last		# last element in the arary
arr.take(3)	# the first 3 elements in the array
arr.drop(3)	# everything but the first 3 elements in the array
arr.push(11)	# pushes 11 at the end of the array
arr.insert(1, 12, 13, 14)	# insert pushes 12, 13, 14 starting at index 1 onto the array
arr.unshift(0)	# adds 0 at the start of the array