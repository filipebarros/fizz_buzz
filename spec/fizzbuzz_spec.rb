# frozen_string_literal: true

require 'fizzbuzz'

RSpec.describe FizzBuzz do
  describe '.for' do
    subject { described_class.for(number) }

    describe 'when number is multiple of 3' do
      let(:number) { 6 }

      it "returns 'Fizz'" do
        expect(subject).to eq('Fizz')
      end
    end

    describe 'when number is multiple of 5' do
      let(:number) { 10 }

      it "returns 'Buzz'" do
        expect(subject).to eq('Buzz')
      end
    end

    describe 'when number is multiple of 3 and 5' do
      let(:number) { 30 }

      it "returns 'FizzBuzz'" do
        expect(subject).to eq('FizzBuzz')
      end
    end

    describe 'when number is not a multiple of 3 or 5' do
      let(:number) { 2 }

      it "returns the number" do
        expect(subject).to eq(number.to_s)
      end
    end
  end
end
