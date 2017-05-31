require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest

  def test_file_can_import
  test = File.open('test_text.txt', 'r')
  assert_equal test.nil?, false
  end

  def test_file_can_import
    test = File.open('test_text.txt', 'r')
    result = puts test
    assert_output "TEST", result
  end


end
