# input:  ruby ./lib/chisel.rb my_input.markdown my_output.html

#load file
my_input_count = 0
my_input = File.open(ARGV[0], 'r') #{|f| count = f.read.count("\n")}

#read file
convert_file = my_input.read
my_input.close

#convert file
html_text = convert_file.upcase

#output file
my_output_count = 0
my_output = File.open(ARGV[1], 'w')
my_output.write(html_text)
my_output.close

#output info
puts "Converted my_input.markdown (#{my_input_count} lines) to my_output.html (#{my_output_count} lines)"

class MarkdownCoverter




end
