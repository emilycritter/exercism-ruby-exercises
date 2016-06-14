class Complement
  VERSION = 3

  def self.of_dna(dna_strand)
    rna_strand = dna_strand.downcase
    rna_strand.gsub!('a', 'U')
    rna_strand.gsub!('t', 'A')
    rna_strand.gsub!('c', 'G')
    rna_strand.gsub!('g', 'C')
    raise ArgumentError if rna_strand != rna_strand.upcase
    return rna_strand
  end

end
