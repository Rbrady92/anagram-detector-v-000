# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.split("")
  end

  def match(list)
    matches = []
    list.each do |curr|
      if curr.length == @word.length
        if @word.all? {|letter| curr.include?(letter)}
          matches << curr
        end
      end
    end
    matches
  end

end
