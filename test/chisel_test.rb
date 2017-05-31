require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest

  def test_file_can_import
  test = File.open('test_text.txt', 'r')
  assert_equal test.nil?, false
  end

  def test_file_can_output
    test = File.open('test_text.txt', 'r')
    result = puts test
    assert_output "TEST", result
  end

  def test_ARGV[0]
    skip #don't know how to test
    #ruby ./lib/chisel.rb my_input.markdown my_output.html
    assert_equal my_input.markdown, ARGV[0]
  end

  def test_ARGV[1]
    skip #don't know how to test
    #ruby ./lib/chisel.rb my_input.markdown my_output.html
    assert_equal my_output.html, ARGV[1]
  end

  def test_filtering_of_hash
  end

  def test_filtering_of_hashes
  end

  def test_filtering_of_italics
  end

  def test_filtering_of_bold
  end
end
