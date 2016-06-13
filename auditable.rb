module Auditable

  def audit
    puts "Rolled a #{self.die_number} (#{self.class})"
  end

end