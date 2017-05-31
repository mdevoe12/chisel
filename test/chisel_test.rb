require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_if_create_class
    chisel = Chisel.new

    assert_instance_of Chisel, chisel
  end

  def test_free_standing_line
    chisel = Chisel.new
    expected = "<p>This is a test.</p>"
    actual = chisel.make_paragraph("This is a test.")

    assert_equal expected, actual
  end

end
