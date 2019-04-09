class Attendee
attr_reader :name, :age


@@all = []
  def initialize(name, age)
    @name = name
    @age = age

    @@all << self
end

def self.all
  @@all
end

def my_events
  Ticket.all.select do |event|
    event.attendee = self
  end
end

def events
  Ticket.all.map do |ticket|
    ticket.event
  end
end

def money_spent
 events.inject(0) do |sum, price|
  sum + price.ticket_price
end
end
end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events
