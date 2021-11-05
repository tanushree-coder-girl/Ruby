# ============== Ruby Introduction =====================
# Ruby is a object oriented programming language. Everything in ruby is a object. It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan. 

# ============= Hello world ====================
puts "hello world";
puts "welcome" + " " + "in ruby tutorial";
print "hello everyone";

greetings = "hello everyone";
puts greetings;
greetings = "hello Buddies, Welcome in ruby tut"
puts greetings

def greetMe(wish)
    puts wish
end
greetMe('good morning');
greetMe('good afternoon');

# The only difference between puts and print is that puts automatically prints a new line after the end of a sentence whereas print doesn't.

# ============= Strings And its Methods =====================
str =  "I am a string"

puts str;
#  for check data type write variablename.class 
puts str.class

# type irb in terminal for write ruby code for check and test 
# variablename.methods to check all method of this in terminal

# Strings methods 
puts str.nil?
puts str.length
puts str.size
puts str.empty?
puts "".empty?
puts str.reverse 

# string with variable .. string interpletation
name = "john"
puts "my Name is #{name}" # it only works with double quotes 

# escape characters 
puts 'hello i am a \'programmer\'';
puts 'hello i am a "programmer"';

# ================== Get Input Data from users =================
puts "enter Your first name"
firstname = gets.chomp
puts "enter Your last name"
lastname = gets.chomp
puts "welcome #{firstname} #{lastname}"
puts "your firstname has #{firstname.length} characters and lastname has #{lastname.length} characters"
fullname = firstname + " " + lastname
puts "your reverse name is #{fullname.reverse}"


# ================= Numbers And More =====================
puts 5 + 10;
puts 10 - 5;
puts 10 * 15;
puts 20 / 6; 
puts 10 % 3

num1 = 20
num2 = 6
puts num1.to_f / num2.to_f         #converting number into float
puts 50.0.to_i                      # converting float into integar 
puts "1".to_i                       # converting string into integar

puts 21 % 2 
# note => if odd number then modular % always returns 1 

puts num1.odd?
puts num2.even?

# comparision operators
puts num1 < num2    #less than
puts num1 > num2    #greater than
puts 10 >= 11
puts 10 <= 11
puts num1 == num2

# random number generator 
randomNum = rand(10)
puts randomNum;

# Times 
20.times {puts :"hy"}

# ================= Methods And Branching =====================
# function or method
def add(oneNum, secondNum)
    oneNum.to_f + secondNum.to_f
end
def substract(oneNum, secondNum)
    oneNum.to_f - secondNum.to_f
end
def mult(oneNum, secondNum)
    oneNum.to_f * secondNum.to_f
end
def reminder(oneNum, secondNum)
    oneNum.to_f % secondNum.to_f
end

# get input form user 
puts "what you want to do? choose 1) Add 2)substact 3)multiply 4) find reminder : "
prompt = gets.chomp

puts "Enter first number" 
firstnumber = gets.chomp
puts "Enter second number"
secondnumber = gets.chomp

# condition or branching
if prompt == "1"
    puts "you have choose to add : #{firstnumber} & #{secondnumber}"
    result = add(firstnumber, secondnumber)
elsif prompt == "2"
    puts "you have choose to substract : #{firstnumber} & #{secondnumber}"
    result = substract(firstnumber, secondnumber)
elsif prompt == "3"
    puts "you have choose to multiply : #{firstnumber} & #{secondnumber}"
    result = mult(firstnumber, secondnumber)
elsif prompt == "4"
    puts "you have choose to find the reminder : #{firstnumber} & #{secondnumber}"
    result = reminder(firstnumber, secondnumber)
else
    puts "you have made an invalid choose"
end

puts "your output is : #{result}"

# ================= Arrays And iterations =====================
data = [4,7,8,9,6,5,7,"xyz",[0,1,2]]
print data
puts " "
puts data.include?("xyz")
print data.reverse
puts " "
print data
puts " "
print data.reverse!
puts " "
print data
puts " "
print data.shuffle
puts " "

# range 
randomNumArray = (0..25).to_a
print randomNumArray.shuffle!
puts " "

# add an item in last of an array 
randomNumArray << 5  #push item at last in array
print randomNumArray
puts " "
randomNumArray.push(10) # push item at last in array
print randomNumArray
puts " "
randomNumArray.unshift('hello')      #add an item in first index
print randomNumArray
puts " "
randomNumArray.pop #remove last elem of an array
print randomNumArray 
puts " "

# find uniq item
print randomNumArray.uniq
puts " "
print randomNumArray.uniq!
puts " "

# iteration of an array 
newArray = (0..50).to_a.shuffle
print newArray
puts " "
puts newArray[0]        #for get 1st element of array using index num 
puts newArray[33]       #array[indexNum] index starts with 0

# loop an array 
# 1. using each loop
newArray.each { |num| puts "my num is : #{num}" }

# 2. using for loop
for num in newArray 
    puts "my number is #{num}"
end

# 3, using each with do end loop 
newArray.each do |value|
    puts "my value is #{value}"
end

fruits = ["mango", "apple", "orange"]
fruits.each { |fruit| puts fruit.capitalize }

marks = (0..100).to_a.shuffle 
print marks
puts " "
marks.select { |mark| print mark.odd? }
marks.each { |mark| print mark if mark.odd? }
arr = ["my", "name", "is", "this"]
puts arr.join(' ')

# ================= Hashes And Its Methods =====================
mydetails = { 'name' => 'tanu', 'profession' => 'programmer'}
puts mydetails
puts mydetails['profession']

#another way of declare hash
mydetails2 = { name:'doesse', age:'20'}
puts mydetails2 
puts mydetails2[:name]
# add an item in hash 
mydetails2[:profession] = 'coder'
puts mydetails2
# delete item in hash 
mydetails2.delete(:age)
puts mydetails2

mydetails.each { |key, value| puts "the key is #{key} and its value is #{value}"}
digits = {one:1, two:2, three:3, four:4, five:5}
puts digits
digits.each { |key, value| digits.delete(key) if value > 3 }
puts digits
digits[:six]=6
puts digits
digits.select { |k,v| puts v.odd? }

# how to write ruby code 
# https://ruby-style-guide.shopify.dev/


# =========================== A practice example code =======================================
# ================ dictionary assignment ===================== 
dialBook = {
    "afghanistan"=>93,
    "argentina"=>54,
    "india"=>91,
    "australia"=>43,
    "china"=>86,
}

# method to display city name 
def getCityNames(somehash)
    somehash.each { |k, v| puts k}
end

# method to get area code , dial book and city name 
def getMobileCode(somehash, key)
    somehash[key]
end

# loop
loop do
    puts "do you want to look up a city name? (Y/N)" 
    answer = gets.chomp
    if answer != "Y"
        break
    end

    puts "which city do you want for get the area code "
    getCityNames(dialBook);
    puts "Enter your selection"
    prompt = gets.chomp;

    if dialBook.include?(prompt)
        puts "THe Mobile code for #{prompt} is #{getMobileCode(dialBook, prompt)}"
    else
        puts "Invalid Selection! Your Entered City Name is not in the dictionary "
    end
end

# ======================== Object oriented programming ================================
# objects,classes and instance variables 

#  Note => the first letter of class name must be always capital 

# create a class
class User
    # initialize instance variables using constructor 
    def initialize(name) 
        puts "welcome from constructor"
        @name = name
    end

    # method in class
    def run
        puts "welcome everone"
    end

    # method for get name
    def getName 
        @name
    end

    # method for setname
    def setname=(newname)
        @name = newname
    end

end

userObj = User.new("John")
userObj.run
puts userObj.getName
userObj.setname = "antron"
puts userObj.getName

class Info
    # attr_accessor 
    attr_accessor :name, :email

    def initialize(name, email)
        @name = name
        @email = email
    end
end

information = Info.new("RJ", "rj@gmail.com")
puts "My user Name is #{information.name} and email is #{information.email}"
information.name = "CK sharma"
information.email = "ck@gmail.com"
puts "my new username is #{information.name} and new email is #{information.email}"

# Inheritance and Modules 
class A 
    attr_accessor :alphabates
    def initialize (alphabates)
        @alphabates = alphabates
    end

    def run 
        puts "A for apple"
    end

    # class method is 
    def self.classmethod
        puts "hello i am a class method"
    end
end

class B < A 
    def run 
        puts "B for Boy"
    end
end

a = A.new('apple')
puts a.alphabates
a.run 
A.classmethod    #classs method 
b = B.new('boy')
b.run
print B.ancestors

puts " "

# module
module Destructable
    def destroy(anyobject)
        puts "i will destory the object"
    end
end

class User1
include Destructable
end
user1 = User1.new 
user1.destroy("me")

#  ============== user_permissions_project in Ruby ====================
# this is inside folder user_permissions_project

# Reference link for learn ruby 
#    https://www.tutorialspoint.com/ruby/index.htm

# =========================== End all the topics Here =======================================
