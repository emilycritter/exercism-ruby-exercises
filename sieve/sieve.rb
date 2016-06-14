class Sieve
  def initialize (num)
    if num > 1
      @array_of_num = (2..num).to_a
    else
      @array_of_num = []
    end
  end

  def primes
    array_of_primes = @array_of_num
    @array_of_num.each do |num|
      array_of_primes.each do |potential_prime|
        array_of_primes.delete(potential_prime) if potential_prime%num == 0 && potential_prime != num
      end
    end
    return array_of_primes
  end
end
