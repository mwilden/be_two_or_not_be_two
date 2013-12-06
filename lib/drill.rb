# coding: UTF-8
require 'forwardable'
require_relative 'be_two_or_not_be_two'
require_relative 'question'

class Drill
  include Enumerable
  extend Forwardable
  attr_reader :questions
  def_delegator :@questions, :each

  def initialize starting_letter = 'A', ending_letter = 'Z', question = nil
    @questions = []
    if question.nil?
      create_questions starting_letter, ending_letter
    else
      create_question question, starting_letter, ending_letter
    end
    @questions.shuffle!
  end

end
