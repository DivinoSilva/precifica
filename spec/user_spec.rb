# frozen_string_literal: true

require 'rspec'
require_relative '../lib/user'

RSpec.describe User do
  let(:user) { User.new(10) }

  describe '#birthday_discount_eligible?' do
    it 'returns true if current month matches birthday month' do
      expect(user.birthday_discount_eligible?(10)).to be true
    end

    it 'returns false if current month does not match birthday month' do
      expect(user.birthday_discount_eligible?(5)).to be false
    end
  end

  describe '#birthday_discount_rating' do
    it 'returns 10 as the birthday discount rating' do
      expect(user.birthday_discount_rating).to eq(10)
    end
  end
end
