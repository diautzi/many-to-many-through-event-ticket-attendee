require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:
dia = Attendee.new("Diana", 22)
soni= Attendee.new("Sonia", 30)
sil= Attendee.new("Silviu", 30)

coldplay = Event.new("Coldplay", 50000, 50)
muse = Event.new("Muse", 100000, 100)
pink = Event.new("Pink", 150000, 150)

tick1= Ticket.new(pink, dia)
tick2= Ticket.new(coldplay, soni)
tick3= Ticket.new(muse, dia)
tick4= Ticket.new(coldplay, dia)
tick5= Ticket.new(muse, sil)
tick6= Ticket.new(pink, sil)
tick7= Ticket.new(coldplay, sil)

#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
