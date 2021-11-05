require 'pp'                #preety print 
require_relative 'user'   #user class 
user = User.new 'abc@example.com','abc'
pp user 
user.save