class RestaurantOwner

    attr_accessor :name, :age
    @@all = []
    
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select{|restaurant| restaurant.owner == self}
    end

    def sell_restaurant(restaurant, buyer)
        if self == restaurant.owner
            buyer = restaurant.owner
        else
            "Sorry, I don't own this one!"
        end
    end
# not sure why sell restaurant isn't working, when i test rich_boy = goodeats.owner i still get the da_owner instance
    def menu_items
       self.restaurants.map{|restaurants| restaurants.menu_items}
    end

    def self.average_age
       self.all.map{|r_o| r_o.age}.sum / self.all.length
    end
end 