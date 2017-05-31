# input:  ruby ./lib/chisel.rb my_input.markdown my_output.html

#load file
my_input_count = 0
my_input = File.open(ARGV[0], 'r')
convert_file = my_input.read
my_input.close

#convert file
def convert_files(text)
filtered_text = ""
text.split("\n").each do |sentence|
    if sentence[0..1] == "##"
      filtered_text << "<h1>"
      filtered_text << sentence
      filtered_text << "</h1>"
    elsif sentence[0] == "#"
      filtered_text << "<h2>"
      filtered_text << sentence
      filtered_text << "</h2>"
    else
      filtered_text << "<p>"
      filtered_text << sentence
      filtered_text << "</p>"
    end
  end
  filtered_text
end

def filter_heading_one(sentence)
end
def filter_heading_two(sentence)
end
def filter_bold(sentence)
end
def filter_italics(sentence)
end

#output file
my_output_count = 0
my_output = File.open(ARGV[1], 'w')
my_output.write(convert_files(convert_file))
my_output.close

#output info
puts "Converted my_input.markdown (#{my_input_count} lines) to my_output.html (#{my_output_count} lines)"
