# frozen_string_literal: true

require 'rspec'
require_relative '../lib/price_service'
require_relative '../lib/tax'
require_relative '../lib/category'
require_relative '../lib/user'
require_relative '../lib/product'
require 'date'

RSpec.describe PriceService do
  subject(:final_price) { PriceService.new(product: product, user: user).final_price }

  let(:tax) { Tax.new(10) }
  let(:category) { Category.new('electronics') }
  let(:product) { Product.new(100, tax, category) }
  let(:user) { User.new(5) }

  context 'when product has not discount and aplied tax' do
    let(:product) { Product.new(100, Tax.new(10), category) }

    it 'calculates the total price with tax' do
      expect(final_price).to eq(110.0)
    end
  end

  context 'when product is food' do
    let(:product) { Product.new(100, tax, Category.new('food')) }

    it 'applies a 5% discount on food products' do
      expect(final_price).to eq(104.5)
    end
  end

  context 'when user is in their birthday month' do
    let(:user) { User.new(Date.today.month) }
    let(:product) { Product.new(100, tax, category) }

    it 'applies a 10% birthday discount' do
      expect(final_price).to eq(99.0)
    end
  end

  context 'when product is food and user is in their birthday month' do
    let(:user) { User.new(Date.today.month) }
    let(:product) { Product.new(100, tax, Category.new('food')) }

    it 'applies only the biggest discount' do
      expect(final_price).to eq(99.0)
    end
  end
end
