class Theater
  attr_accessor :admitted, :capacity

  def initialize(number_of_seats)
    @capacity = number_of_seats
    @admitted = 0
  end

  def admit!(patrons = 1)
    if @admitted + patrons > @capacity
    puts "No Admittance! Sorry, we're full."
    else
      @admitted += patrons
    end
  end

  def at_capacity?
    @admitted == @capacity
  end

  def record_walk_outs!(patrons = 1)
    @admitted -= patrons
  end
end

tinsletown = Theater.new(10)
tinsletown.admit!(1)
