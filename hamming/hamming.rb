class Hamming
  Hamming::VERSION = 1

  def compute (strand1, strand2)
    raise ArgumentError if strand1.size != strand2.size
    error_count = 0
    strand1.chars.each_with_index { |char, i| error_count += 1 if strand1.chars[i] != strand2.chars[i]}
    return error_count
  end

end
Hamming = Hamming.new
