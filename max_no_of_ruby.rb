t = nil
until t.is_a?(Fixnum) && t <= 100 do
  print "Please enter number of test cases: "
  t = Integer(gets) rescue nil
end
i = 0
a = Array.new
while i < t  do
   input = nil
   loop do
      print "Please enter string #{i+1}: "
	  input = gets
	  break if input.size <= 100
   end 
   r = input.count('r')
   u = input.count('u')
   b = input.count('b')
   y = input.count('y')
   res = [r, u, b, y].min
   a.push(res)
   i +=1
end
print "Maximum number of ruby that can be generated from the strings are as follows: \n"
a.each {|value| 
	print "#{value} \n"
}
