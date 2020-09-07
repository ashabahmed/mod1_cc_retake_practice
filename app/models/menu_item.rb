class MenuItem
    attr_accessor :price
    attr_reader :recipe, :restaurant
    @@all = []
    
    def initialize(restaurant=nil, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def owner
        self.restaurant.owner
    end
    
    def self.most_expensive_item
        self.all.max_by{|m_i| m_i.price}
    end

    def self.all
        @@all
    end
end