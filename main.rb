require "pry"
require_relative "item"
require_relative "shop"
require_relative "user"
require_relative "string"

#後から店名を変えらえるように、前もって定義した定数に名前を代入している
SHOP_NAME = "ラーメン屋　りゅーたろう"
MONEY = 3000

items = Item.import(path: "items.csv")
shop = Shop.new(name: SHOP_NAME, items: items)
user = User.new(money: MONEY)

shop.display
item = user.choice(shop.items)
shop.sell(user, item)
