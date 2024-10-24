# frozen_string_literal: true

class Tax
  attr_reader :percentage

  def initialize(percentage)
    @percentage = percentage
  end

  def calculate(price)
    price * (percentage / 100.0)
  end
end
