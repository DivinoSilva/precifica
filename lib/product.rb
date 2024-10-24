# frozen_string_literal: true

class Product
  attr_reader :price, :tax, :category

  def initialize(price, tax, category)
    @price = price
    @tax = tax
    @category = category
  end
end