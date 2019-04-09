class Event

 attr_reader :name, :ticket_price, :total_cost
  @@all = []

  def initialize(name, total_cost, ticket_price)

    @name = name
    @total_cost = total_cost
    @ticket_price =ticket_price

    @@all << self
  end

  def self.all
    @@all
  end

  def my_tickets
    Ticket.all.select do |instances|
      instances.event == self
  end
 end

 def attendees
   Ticket.all.map do |ticket|
     ticket.attendee
   end
 end

 def sell_to_break_even
     total_tickets_sold = my_tickets.count * @ticket_price
     tickets_left = (@total_cost - total_tickets_sold)/@ticket_price
       if tickets_left >=0
         tickets_left
       else
         0
       end
   end

 def average_age
   age_sum = attendees.inject(0) do |sum, attendee|
      sum += attendee.age
    end
    age_sum / attendees.length
end
end
# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0.
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
