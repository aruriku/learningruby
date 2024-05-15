class Ticket
    def initialize(venue,date)
        @venue = venue
        @date = date
    end
    def venue
        @venue
    end
    def date
        @date
    end
    def price=(money)
        @price = money
    end
    def discount(amount)
        amount = (100 - amount) * 0.01
        @price = @price * amount
        @price = "$#{"%.2f" % @price}"
    end
end


th = Ticket.new("Town Hall", "2013-11-12")
th.price = 100
cc = Ticket.new("Convention Center", "2014-12-13")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
puts "The ticket for #{th.venue} has been discounted 15% to
#{th.discount(15)}."