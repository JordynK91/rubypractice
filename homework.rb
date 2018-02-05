#Create a function that takes a string as an argument and adds the phrase 
#"Only in America!" to the end of it

def america(x)
	puts x + " " + "Only in America!"
end

america('football')

#Create a function that takes two arguments, adds them together and returns their value split in 3
def math(a, b)
	puts (a+b)/3
end

math(3, 9)

#Create a hash that holds information about you. 
#Include firstName, lastName, birthday and an array of interests. 
#Print each property out to the terminal.

me = {
:firstName => 'Jordyn',
:lastName =>  'Kimelheim',
:birthday => 'August 29th',
:interests => ['reading', 'travel', 'food', 'coding']
}

puts me[:firstName]
puts me[:lastName]
puts me[:birthday]
puts me[:interests]

#Declare a function that, depending upon which virtual "door" was entered, 
#tells the user they've received a different "prize" in an alert.
# Try running it after it has been declared a few times with each door option

puts "pick a door! 1, 2, 3"

def door(x)
	if x == 1
		puts 'you win a car'
	elsif x == 2
		puts 'you win a million dollars'
	elsif x == 3
		puts 'you win a puppy'
	else 
		puts 'that is not a door!'
	end
end

door(1)
door(2)
door(3)
door(4)

#Create an array that contains various names.
# Use a loop to print out the names, followed by 'is my friend'. 
#Like so: Jake is my friend John is my friend Samantha is my friend Billy is my friend

names = ['oggi', 'jeremy', 'clayton', 'emily']

names.each do |item|
	puts item + ' '+'is my friend'
end 


#Create a function to find the maximum value in an array of numbers.
# For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max function.

my_array = [1, 15, 27, 3, 99, 50, 179, 50, -2]

def max(array)
	array.sort!
	puts array[-1]
end
	
#max(my_array)

#or without built in methods

array2 = [1, 5, 23, 1212,  99, 56]

def max2(array)
	max = array[0]
	for i in array
		if i > max
		   max = i
		end
		
	end
	puts max
end


max2(array2)


#Create a function that takes two arguments - both of them arrays. 
#Inside of the function, combine the arrays using the items from the first array as 
#keys and the second array as values. For example, when these two arrays are supplied as arguments:
    #[:toyota, :tesla]
    #["Prius", "Model S"]
 #they should return a hash like so:
   # {toyota: "Prius", tesla: "Model S"}

array1 = ['breakfast', 'lunch', 'dinner']
array2 = ['pancakes', 'sandwich', 'pizza']

def combo(a, b)
	puts Hash[a.zip(b)]
end

combo(array1, array2)

#or without built in methods

arrayName = ['harry', 'hermione', 'ron']
arrayLastName = ['potter', 'granger', 'weasley']


def combo2(a,b)
i = 0
while i < a.length
	names = Hash.new 
	puts names = {a[i] => b[i]}
	i+=1
end
end

combo2(arrayName, arrayLastName)

#Write a program that prints the numbers from 1 to 100, except:

#for multiples of three print "Fizz" instead of the number
#for multiples of five print "Buzz"
#Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

for i in 0..100
	if i % 15 == 0 
		puts 'FizzBuzz'
	elsif i % 3 == 0 
		puts 'Fizz'
	elsif i % 5 == 0
		puts 'Buzz'
	else 
		puts i 
	end
end


 #Create a while loop that "sings" the classic song "99 Bottles of Root Beer on the Wall"  
 #The code it outputs to the console should look similar to this:  
#{}"99 bottles of root beer on the wall, 99 bottles of root beer...
#take one down, pass it around 98 bottles of root beer on the wall, 
#98 bottles of root beer on the wall, 98 bottles of root beer...
#take one down, pass it around 97 bottles of root beer on the wall," etc., all the way to 0 bottles.

i = 99
while i>1
	puts "#{i} bottles of beer on the wall #{i} bottles of beer. 
	take one down, pass it around, #{i-1} bottles of beer on the wall"
	i -= 1
end
while i < 2 && i > 0
	puts "#{i} bottle of beer on the wall #{i} bottle of beer. 
	take one down, pass it around, 0 bottles of beer on the wall"
	i -= 1
end

