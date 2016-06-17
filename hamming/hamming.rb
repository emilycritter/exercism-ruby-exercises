class Hamming
  VERSION = 1

  def self.compute (strand1, strand2)
    raise ArgumentError if strand1.size != strand2.size
    get_pairs = strand1.chars.zip(strand2.chars)
    get_pairs.select{|i| i[0] != i[1]}.count
  end

end
