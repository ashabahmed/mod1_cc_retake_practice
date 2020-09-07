class Recipe
    attr_reader :name
    attr_accessor :description
    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end

    def menu_items
        MenuItem.all.select{|menu_item| menu_item.recipe == self}
    end

    def average_price
        self.menu_items.map{|menu_item| menu_item.price}.sum / menu_items.length
    end

    def highest_price
        self.menu_items.max_by{|menu_item| menu_item.price}.price
    end

    def restaurants
        self.menu_items.map{|menu_item| menu_item.restaurant}
    end

    def cheapest_restaurant
        self.menu_items.min_by{|m_i| m_i.price}.restaurant
    end
    
    def self.inactive
        Recipe.all.reject{|recipe| recipe.menu_items}
    end
    ### can't figure self.inactive out. 
    def self.all
        @@all
    end
end