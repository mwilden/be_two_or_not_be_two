# coding: UTF-8
require_relative '../lib/be_two_or_not_be_two'

class View

  def initialize board
    @board = board
  end

  def self.show_banner
    puts "Be Two or Not Be Two 1.0 [#{Time.now.strftime '%F'}] by Mark Wilden"
  end

  def show_question
  end

  def puts string = ''
    Kernel.puts string
  end

  def show_quit
  end

  def pluralize root, count
    string = root
    string << 's' if count != 1
    string
  end

end
