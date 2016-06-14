module StudioGame

  require_relative 'auditable'

  class Die
    include Auditable

    attr_reader :die_number

    def initialize
      roll
    end

    def roll
      @die_number = rand(1..6)
      audit
      @die_number
    end

  end
end
