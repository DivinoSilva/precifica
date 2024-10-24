# frozen_string_literal: true

require 'rspec'
require_relative '../lib/category'

RSpec.describe Category do
  let(:category_food) { Category.new('food') }
  let(:category_beverages) { Category.new('beverages') }
  let(:category_electronics) { Category.new('electronics') }

  describe '#eligible_for_food_discount?' do
    it 'returns true for food category' do
      expect(category_food.eligible_for_food_discount?).to be true
    end

    it 'returns true for beverages category' do
      expect(category_beverages.eligible_for_food_discount?).to be true
    end

    it 'returns false for non-food category' do
      expect(category_electronics.eligible_for_food_discount?).to be false
    end
  end

  describe '#food_discount_rating' do
    it 'returns 5 as food discount rating' do
      expect(category_food.food_discount_rating).to eq(5)
      expect(category_beverages.food_discount_rating).to eq(5)
    end
    it 'returns 0 as food discount rating when category is not food' do
      expect(category_electronics.food_discount_rating).to eq(0)
    end
  end
end
