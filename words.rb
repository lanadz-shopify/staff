require 'set'

class WordsFinder
      
  def initialize(vocabulary, letters)
    @vocabulary = vocabulary
    @letters = letters.to_set    
  end
  
  def run
    @vocabulary.keep_if do |word|
      (word.chars.to_a.to_set - @letters).empty?
    end
  end

end

vocabulary = ['abc', 'def', 'ght', 'adg', 'abd']
letters = ['a', 'b', 'c', 'd']
puts "Words: " + WordsFinder.new(vocabulary, letters).run.inspect
