class Pangram
  def self.is_pangram?(str)
    ('a'..'z').to_a.each {|ltr| return false unless str.downcase.split(//).include?(ltr)}
  end
end

class BookKeeping
  VERSION = 2
end
