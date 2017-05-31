# input:  ruby ./lib/chisel.rb my_input.markdown my_output.html

#load file
my_input_count = 0
my_input = File.open(ARGV[0], 'r') #{|f| count = f.read.count("\n")}

#read file
convert_file = my_input.read
my_input.close

#convert file
filtered_text = ""
convert_file.split("\n").each do |sentence|
  if sentence[0..1] == "##"
    filtered_text << "<h1>"
    filtered_text << sentence
    filtered_text << "</h1>"
  elsif sentence[0] == "#"
    filtered_text << "<h2>"
    filtered_text << sentence
    filtered_text << "</h2>"
  else
    filtered_text << sentence
  end
end

#output file
my_output_count = 0
my_output = File.open(ARGV[1], 'w')
my_output.write(filtered_text)
my_output.close

#output info
puts "Converted my_input.markdown (#{my_input_count} lines) to my_output.html (#{my_output_count} lines)"

#class MarkdownCoverter

# def clean_up(file)
#   file.chars.each do |letter|
#     if "."
#       "!!!!!!"
#     end
#   end
# end
