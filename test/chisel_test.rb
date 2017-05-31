require 'pry'

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

  def test_if_multiple_sentences_work
    chisel = Chisel.new
    expected = "<p>This is the first line. This is the second line.</p>"
    actual = chisel.make_paragraph("This is the first line.\n This is the second line.")

    assert_equal expected, actual
  end

  def test_if_multiple_paragraphs_work
    chisel = Chisel.new
    expected = "<p>This is the first paragraph.</p>\n<p>This is the second paragraph.</p>"
    actual = chisel.make_multi_paragraphs("This is the first paragraph.\n\nThis is the second paragraph.")

    assert_equal expected, actual
  end

  def test_if_header1_converts
    chisel = Chisel.new
    expected = "<h1>Header</h1>"
    actual = chisel.make_header("#Header")

    assert_equal expected, actual
  end

  def test_if_header2_converts
    chisel = Chisel.new
    expected = "<h2>Header</h2>"
    actual = chisel.make_header("##Header")

    assert_equal expected, actual
  end

end
