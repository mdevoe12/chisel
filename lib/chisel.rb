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

      "<p>#{paragraph_1}</p>\n<p>#{paragraph_2}</p>"
    else
    end
  end

  def make_header(text)
    if text.include? "##"
      text = text.gsub(/#/, "")
      "<h2>#{text}</h2>"
    elsif text.include? "#"
      text = text.gsub(/#/, "")
      "<h1>#{text}</h1>"
    end
  end

end
