
story = "I had a ((an adjective)) sandwich for lunch today.  It dripped all
     over my ((a body part)) and ((a noun))."

swap_list = story.scan(/\(\((.*?)\)\)/)

swap_list.each do |item|
    story = story.sub("(("+item[0]+"))", "BUTT")
end
    
puts story


#print "Enter an adjective: "
#answer = gets.chomp()
#print answer
