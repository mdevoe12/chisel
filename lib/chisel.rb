require 'pry'

class Chisel

  def make_paragraph(text)
    text = text.gsub(/\n/, "")
    # text = text.delete "\n"
    "<p>#{text}</p>"
  end

end
