require 'pry'

class Chisel

  def make_paragraph(text)
    text = text.gsub(/\n/, "")
    # text = text.delete "\n"
    "<p>#{text}</p>"
  end

  def make_multi_paragraphs(text)
    if text.include? "\n\n"
      paragraphs = text.split("\n")
      paragraph_1 = paragraphs[0].to_s
      paragraph_2 = paragraphs[2].to_s
      "<p>#{paragraph_1}</p>\n<p>#{paragraph_2}"
    else
    end

  end

end
