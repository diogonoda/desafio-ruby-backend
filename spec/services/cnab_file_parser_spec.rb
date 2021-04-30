# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CnabFileParser do
  describe '.call' do
    context 'fail' do
      context 'when file is empty' do
        let(:filename) { file_fixture('empty_file.txt') }

        it 'returns NoContentFile exception' do
          expect { described_class.call(filename) }.to raise_error(CnabFileParser::NoContentFile)
        end
      end
    end

    context 'success' do
      context 'when file content is fine' do
        let!(:create_trade_type) { create(:trade_type) }
        let(:cnab_file) { file_fixture('cnab.txt') }

        it 'creates new Trades' do
          expect { described_class.call(cnab_file) }.to change {
            Trade.count
          }.by(1)
        end
      end
    end
  end
end
