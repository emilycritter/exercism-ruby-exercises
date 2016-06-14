require 'time'
class Gigasecond
  VERSION = 1
  def self.from (birthdate)
    gs = birthdate.to_f + 10**(9.0)
    gs = Time.at(gs).utc
    return gs
  end
end
