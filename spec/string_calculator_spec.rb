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
end
