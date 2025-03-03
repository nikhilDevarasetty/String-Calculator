# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  subject { described_class.new(string).add }

  describe '#empty string' do
    context 'with no leading/trailing spaces' do
      let(:string) { '' }

      it { is_expected.to eq(0) }
    end

    context 'with leading/trailing spaces' do
      let(:string) { '  ' }

      it { is_expected.to eq(0) }
    end
  end

  describe '#single digit string' do
    context 'when string is 1' do
      let(:string) { '1' }

      it { is_expected.to eq(1) }
    end

    context 'when string is 2' do
      let(:string) { '2' }

      it { is_expected.to eq(2) }
    end

    context 'when string is 3' do
      let(:string) { '3' }

      it { is_expected.to eq(3) }
    end
  end

  describe '#double digit string' do
    context 'when string is 1,2' do
      let(:string) { '1,2' }

      it { is_expected.to eq(3) }
    end

    context 'when string is 2,5' do
      let(:string) { '2,5' }

      it { is_expected.to eq(7) }
    end

    context 'when string is 3,8' do
      let(:string) { '3,8' }

      it { is_expected.to eq(11) }
    end
  end

  describe '#more than 2 digits string' do
    context 'when string is 1,2,3' do
      let(:string) { '1,2,3' }

      it { is_expected.to eq(6) }
    end

    context 'when string is 2,5,4,6' do
      let(:string) { '2,5,4,6' }

      it { is_expected.to eq(17) }
    end

    context 'when string is 3,8,7,9' do
      let(:string) { '3,8,7,9' }

      it { is_expected.to eq(27) }
    end
  end
end
