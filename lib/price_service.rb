# frozen_string_literal: true

require_relative 'tax'
require_relative 'category'

class PriceService
  def initialize(product:, user:)
    @product = product
    @user = user
    @current_month = Date.today.month
  end

  def final_price
    price_with_tax - calculate_discount(price_with_tax)
  end

  private

  def price_with_tax
    @product.price + @product.tax.calculate(@product.price)
  end

  def calculate_discount(price)
    return  birthday_discount(price) if @user.birthday_discount_eligible?(@current_month)

    @product.category.eligible_for_food_discount? ? food_discount(price) : 0
  end

  def food_discount(price)
    price * (@product.category.food_discount_rating / 100.0)
  end

  def birthday_discount(price)
    price * (@user.birthday_discount_rating / 100.0)
  end
end