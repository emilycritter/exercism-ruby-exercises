class Sieve
  def initialize (num)
    @num = num
  end

  def primes
    if @num > 1
      array_of_num = (2..@num).to_a
      array_of_primes = array_of_num
      array_of_num.each do |num|
        array_of_primes.each do |potential_prime|
          if potential_prime%num == 0 && potential_prime != num
            array_of_primes.delete(potential_prime)
          end
        end
      end
    else
      array_of_primes = []
    end
    return array_of_primes
  end
end
