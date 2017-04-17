class Cart
  include ActionView::Helpers::NumberHelper

  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def total_count
    contents.values.sum
  end

  def clear
    contents.clear
  end

  def add_item(item_id)
    contents[item_id.to_s] ||= 0
    contents[item_id.to_s] += 1
  end

  def count_of(item_id)
    contents[item_id.to_s]
  end

  def items
    contents.keys.map do |id|
      Item.find(id)
    end
  end

  def delete(key)
    contents.delete(key.to_s)
  end

  def total_cost
    cost = 0
    contents.each{ |key, value| cost += (Item.find(key).price * value) }
    number_to_currency(cost)
  end

  def cart_items
    contents.map do |id, quantity|
      CartItem.new(id, quantity)
    end
  end
end
