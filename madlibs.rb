
story = "I had a ((an adjective)) sandwich for lunch today.  It dripped all
     over my ((a body part)) and ((a noun))."

swap_list = story.scan(/\(\((.*?)\)\)/)

swap_list.each do |item|
    print "Enter " + item[0] + ":"
    story = story.sub("(("+item[0]+"))", gets.chomp())
end
    
puts story


#print "Enter an adjective: "
#answer = gets.chomp()
#print answer
