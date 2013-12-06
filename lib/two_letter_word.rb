require_relative 'be_two_or_not_be_two'

class TwoLetterWord
  attr_reader :word, :definition

  def initialize word, definition
    @word, @definition = word, definition
  end

end
