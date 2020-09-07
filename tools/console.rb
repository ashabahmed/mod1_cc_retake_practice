# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end
rich_boy = RestaurantOwner.new("Steve", 64)
da_owner = RestaurantOwner.new("John", 23)
 
goodeats = Restaurant.new(da_owner, "GoodEats", 5)
yumm = Restaurant.new(rich_boy, "YUMM", 4)
fosho = Restaurant.new(da_owner, "FoSho", 3.5)
checkers = Restaurant.new(rich_boy, "Checkers", 4)

cheddar = Recipe.new("cheddar", "cheesy cheese")
broccoli = Recipe.new("broccoli", "green good")
testing1 = Recipe.new("checking", "work")
testing2 = Recipe.new("testing", "please")


another_test = MenuItem.new(testing1, 0)
cheesecake = MenuItem.new(goodeats, cheddar, 25.50)
pasta = MenuItem.new(yumm, cheddar, 64.25)
chicken = MenuItem.new(yumm, broccoli, 15.5)
chicken1 = MenuItem.new(checkers, broccoli, 14)
chicken2 = MenuItem.new(fosho, cheddar, 11)
inactivetesting = MenuItem.new(testing2, 0)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0

