# frozen_string_literal: true

class Category
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def eligible_for_food_discount?
    %w[food beverages].include?(@name)
  end

  def food_discount_rating
    eligible_for_food_discount? ? 5 : 0
  end
end