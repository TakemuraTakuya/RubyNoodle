class Shop
  def initialize(name:, items:)
    @name = name 
    @items = items
  end

  def display
    puts "ようこそ　#{@name}へ"
    puts "当店のメニューはこちらです"
    puts "*" * 30
    @items.each.with_index(1) do |item, index|
      puts "#{index}. #{item.name.mb_ljust(24)}: #{item.price.to_s.rjust(4)}円"
    end
    puts "*"* 30
  end
end
