require 'pry'

class Chisel

  def make_paragraph(text)
    text = text.gsub(/\n/, "")
    # text = text.delete "\n"
    "<p>#{text}</p>"
  end

  def make_multi_paragraphs(text)
    if text.include? "\n\n"
      sentences = text.split("\n")
      

  end

end
