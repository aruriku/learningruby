class Ticket
    def initialize(venue)
        @venue = venue
        @date = date
    end
    def venue
        @venue
    end
    def date
        @date
    end
    def date=(date)
        year, month, day = date.split('-')
        # I don't know why but year is a string, specifically
        if year.to_i > 2000 && month.to_i < 13 && day.to_i < 32
            @date = date
        else
            puts "Wrong date format. needs to be yyyy-mm-dd"
            exit
        end
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


th = Ticket.new("Town Hall")
th.price = 100
th.date = "2024-05-15"
cc = Ticket.new("Convention Center")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
puts "The ticket for #{th.venue} has been discounted 15% to
#{th.discount(15)}."