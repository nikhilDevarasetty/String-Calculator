# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  subject { described_class.add(string) }

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
end
