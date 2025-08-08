# frozen_string_literal: true

require 'fizz_buzz'

RSpec.describe FizzBuzz do
  describe '.for' do
    subject(:fizzbuzzer) { described_class.for(number) }

    describe 'when number is multiple of 3' do
      let(:number) { 6 }

      it "returns 'Fizz'" do
        expect(fizzbuzzer).to eq('Fizz')
      end
    end

    describe 'when number is multiple of 5' do
      let(:number) { 10 }

      it "returns 'Buzz'" do
        expect(fizzbuzzer).to eq('Buzz')
      end
    end

    describe 'when number is multiple of 3 and 5' do
      let(:number) { 30 }

      it "returns 'FizzBuzz'" do
        expect(fizzbuzzer).to eq('FizzBuzz')
      end
    end

    describe 'when number is not a multiple of 3 or 5' do
      let(:number) { 2 }

      it 'returns the number' do
        expect(fizzbuzzer).to eq(number.to_s)
      end
    end
  end
end
