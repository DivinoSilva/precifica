# frozen_string_literal: true

class User
  attr_reader :birthday_month

  def initialize(birthday_month)
    @birthday_month = birthday_month
  end

  def birthday_discount_eligible?(current_month)
    birthday_month == current_month
  end

  def birthday_discount_rating
    10
  end
end
