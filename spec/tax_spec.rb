# frozen_string_literal: true

require 'rspec'
require_relative '../lib/tax'

RSpec.describe Tax do
  subject(:tax) { Tax.new(10) }

  describe '#calculate' do
    it 'calculates the tax amount based on the base price' do
      expect(tax.calculate(100)).to eq(10.0)
      expect(tax.calculate(200)).to eq(20.0)
    end
  end
end
