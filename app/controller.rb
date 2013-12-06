# coding: UTF-8
require_relative '../lib/be_two_or_not_be_two'
require_relative 'view'

class Controller
  def initialize drill
    @drill = drill
  end

  def run
    View.show_banner
    run_drill
  end

  def run_drill
    for question in @drill.question
      @question = question
      @view = View.new question
      @view.show_question

      loop do
        response = gets.chomp.upcase
        response_type = handle_response response
        break if [Quit].include? response_type
      end
      @view.puts
    end
  end

  def get_response
    gets.chomp.upcase
  end

  NoMoreMoves = 1
  Incorrect   = 2
  Correct     = 3
  Duplicate   = 4
  Quit      = 5

  def handle_response response
    case
    when response == '~' then exit
    when response == '?' then handle_quit
    when response == '!' then handle_show_all_words
    else handle_move response
    end
  end

  def handle_move response
    move = @question.find response
    if move
      if @question.has_played? move
        handle_duplicate_move
      else
        handle_correct_move move
      end
    else
      handle_incorrect_move
    end
  end

  def handle_show_all_words
    @view.show_all_words
  end

  def handle_quit
    @view.show_quit
    Quit
  end

  def handle_correct_move move
    @question.record_correct_move move
    if @question.no_moves_left?
      return handle_no_more_moves move
    else
      @view.show_correct_move move
    end
    Correct
  end

  def handle_no_more_moves move
    @view.show_no_more_moves move
    NoMoreMoves
  end

  def handle_incorrect_move
    @question.record_incorrect_move
    @view.show_incorrect_move
    Incorrect
  end

  def handle_duplicate_move
    @question.record_duplicate_move
    @view.show_duplicate_move
    Duplicate
  end

end
