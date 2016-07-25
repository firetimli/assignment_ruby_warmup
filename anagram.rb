def anagram input
  line_character=[]
  File.open('enable.txt', 'r') do |f1|
  while line = f1.gets
    line_character = line.scan /\w/
    input_character = input.scan /\w/
    if line.length == input.length+1 && line_character.uniq.sort == input_character.uniq.sort 
    puts line
    end
  end
end

end
