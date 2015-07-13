module NotesHelper
  require 'pygments'
  # create a custom renderer that allows highlighting of code blocks
  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end

end
