require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_if_create_class
    chisel = Chisel.new

    assert_instance_of Chisel, chisel
  end

end
