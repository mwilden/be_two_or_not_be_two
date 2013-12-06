# coding: UTF-8
require_relative 'be_two_or_not_be_two'
require_relative 'two_letter_word'

class Scrabble
  def self.two_letter_words
    @_two_letter_words ||= [
      TwoLetterWord.new('AA', 'lava'),
      TwoLetterWord.new('AB', 'muscle'),
      TwoLetterWord.new('AD', 'ad'),
      TwoLetterWord.new('AE', 'one'),
      TwoLetterWord.new('AG', 'agriculture'),
      TwoLetterWord.new('AH', 'interjection'),
      TwoLetterWord.new('AI', 'three-toed sloth'),
      TwoLetterWord.new('AL', 'East Indian tree'),
      TwoLetterWord.new('AM', 'to be'),
      TwoLetterWord.new('AN', 'indefinite article'),
      TwoLetterWord.new('AR', 'R'),
      TwoLetterWord.new('AS', 'to the same degree'),
      TwoLetterWord.new('AT', 'in the position of'),
      TwoLetterWord.new('AW', 'interjection'),
      TwoLetterWord.new('AX', 'ax'),
      TwoLetterWord.new('AY', 'aye'),

      TwoLetterWord.new('BA', 'eternal soul'),
      TwoLetterWord.new('BE', 'to be'),
      TwoLetterWord.new('BI', 'bisexual'),
      TwoLetterWord.new('BO', 'pal'),
      TwoLetterWord.new('BY', 'pass in game'),

      TwoLetterWord.new('DE', 'from'),
      TwoLetterWord.new('DO', 'diatonic tone'),

      TwoLetterWord.new('ED', 'education'),
      TwoLetterWord.new('EF', 'F'),
      TwoLetterWord.new('EH', 'interjection'),
      TwoLetterWord.new('EL', 'elevated train'),
      TwoLetterWord.new('EM', 'M'),
      TwoLetterWord.new('EN', 'N'),
      TwoLetterWord.new('ER', 'err...'),
      TwoLetterWord.new('ES', 'S'),
      TwoLetterWord.new('ET', 'eat'),
      TwoLetterWord.new('EX', 'X'),

      TwoLetterWord.new('FA', 'diatonic tone'),
      TwoLetterWord.new('FE', 'hebrew letter'),

      TwoLetterWord.new('GO', 'go'),

      TwoLetterWord.new('HA', 'sound of suprise'),
      TwoLetterWord.new('HE', 'male'),
      TwoLetterWord.new('HI', 'greeting'),
      TwoLetterWord.new('HM', 'interjection'),
      TwoLetterWord.new('HO', 'interjection'),

      TwoLetterWord.new('ID', 'part of psyche'),
      TwoLetterWord.new('IF', 'a possibility'),
      TwoLetterWord.new('IN', 'to harvest'),
      TwoLetterWord.new('IS', 'to be'),
      TwoLetterWord.new('IT', 'it'),

      TwoLetterWord.new('JO', 'lover'),

      TwoLetterWord.new('KA', 'spiritual self'),
      TwoLetterWord.new('KI', 'vital force'),

      TwoLetterWord.new('LA', 'diatonic tone'),
      TwoLetterWord.new('LI', 'chinese mile'),
      TwoLetterWord.new('LO', 'interjection'),

      TwoLetterWord.new('MA', 'mother'),
      TwoLetterWord.new('ME', 'me'),
      TwoLetterWord.new('MI', 'diatonic tone'),
      TwoLetterWord.new('MM', 'interjection'),
      TwoLetterWord.new('MO', 'moment'),
      TwoLetterWord.new('MU', 'Greek letter'),
      TwoLetterWord.new('MY', 'my'),

      TwoLetterWord.new('NA', 'not'),
      TwoLetterWord.new('NE', 'born with name of'),
      TwoLetterWord.new('NO', 'no'),
      TwoLetterWord.new('NU', 'Greek letter'),

      TwoLetterWord.new('OD', 'force of natural power'),
      TwoLetterWord.new('OE', 'whirlwhind off Faeroes'),
      TwoLetterWord.new('OF', 'of'),
      TwoLetterWord.new('OH', 'to exclaim'),
      TwoLetterWord.new('OI', 'interjection'),
      TwoLetterWord.new('OM', 'mantra'),
      TwoLetterWord.new('ON', 'wicket side'),
      TwoLetterWord.new('OP', 'abstract art'),
      TwoLetterWord.new('OR', 'heraldic gold'),
      TwoLetterWord.new('OS', 'orifice'),
      TwoLetterWord.new('OW', 'interjection'),
      TwoLetterWord.new('OX', 'ox'),
      TwoLetterWord.new('OY', 'interjection'),

      TwoLetterWord.new('PA', 'father'),
      TwoLetterWord.new('PE', 'Hebrew letter'),
      TwoLetterWord.new('PI', 'to jumble'),

      TwoLetterWord.new('QI', 'vital force'),

      TwoLetterWord.new('RE', 'diatonic tone'),

      TwoLetterWord.new('SH', 'interjection'),
      TwoLetterWord.new('SI', 'ti'),
      TwoLetterWord.new('SO', 'diatonic note'),

      TwoLetterWord.new('TA', 'expression of gratitude'),
      TwoLetterWord.new('TI', 'diatonic note'),
      TwoLetterWord.new('TO', 'in the direction of'),

      TwoLetterWord.new('UH', 'interjection'),
      TwoLetterWord.new('UM', 'interjection'),
      TwoLetterWord.new('UN', 'one'),
      TwoLetterWord.new('UP', 'to raise'),
      TwoLetterWord.new('US', 'we'),
      TwoLetterWord.new('UT', 'musical note'),

      TwoLetterWord.new('WE', 'us'),
      TwoLetterWord.new('WO', 'woe'),

      TwoLetterWord.new('XI', 'Greek letter'),
      TwoLetterWord.new('XU', 'Vietnam money'),

      TwoLetterWord.new('YA', 'you'),
      TwoLetterWord.new('YE', 'you'),
      TwoLetterWord.new('YO', 'interjection'),

      TwoLetterWord.new('ZA', 'pizza'),
    ]
  end

  def self.find_two_letter_word string
    two_letter_words.find do |two_letter_word|
      two_letter_word.word == string
    end
  end

end
