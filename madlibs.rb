stories = []
stories << "I had a ((an adjective)) sandwich for lunch today.  It dripped all
     over my ((a body part)) and ((a noun))."
stories << "Our favorite language is ((gem:a gemstone)).  We think ((gem)) is
     better than ((a gemstone))."

print "Pick a story [1-" + stories.count.to_s + "]: "
story = stories[gets.chomp().to_i - 1]

swap_list = story.scan(/\(\((.*?)\)\)/)
stored_answers = []
is_hash = FALSE
swap_list.each do |item|
    
    placeholder = item[0]

    if stored_answers.include?(placeholder)
        replacement = stored_answers[placeholder]
    elsif placeholder.include? ":"
        placeholder_parts =  placeholder.split(':')
        print "Enter " + placeholder_parts[1] + ": "
        replacement = gets.chomp()
        stored_answers = {placeholder_parts[0] => replacement}
    else
        print "Enter " + placeholder + ": "
        replacement = gets.chomp()
    end

    story = story.sub("(("+placeholder+"))", replacement)
end
    
puts story
