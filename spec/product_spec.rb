# frozen_string_literal: true

require 'rspec'
require_relative '../lib/product'
require_relative '../lib/category'
require_relative '../lib/tax'

RSpec.describe Product do
  let(:tax) { Tax.new(10) }
  let(:category) { Category.new('food') }
  let(:product) { Product.new(100.0, tax, category) }

  describe '#initialize' do
    it 'initializes with price, tax, and category' do
      expect(product.price).to eq(100.0)
      expect(product.tax).to eq(tax)
      expect(product.category).to eq(category)
    end
  end
end
