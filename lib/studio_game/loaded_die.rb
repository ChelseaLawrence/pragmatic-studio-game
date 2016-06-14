module StudioGame

  require_relative 'Auditable'

  class LoadedDie
    include Auditable

    attr_reader :die_number

    def roll
      numbers = [1, 1, 2, 5, 6, 6]
      @die_number = numbers.sample
      audit
      @die_number
    end

  end

end

