# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Trades', type: :request do
  describe 'POST /cnab_upload' do
    context 'when document is invalid' do
      before { post cnab_upload_path, params: { cnab_filename: 'invalid_file.png' } }

      it 'returns an exception' do
        expect(response).to have_http_status :unprocessable_entity
      end
    end

    context 'when document is valid' do
      let!(:create_trade_type) { create(:trade_type) }
      let(:cnab_filename) { file_fixture('cnab.txt') }

      before { post cnab_upload_path, params: { cnab_filename: cnab_filename } }

      it 'returns status code 302' do
        expect(response).to have_http_status :redirect
      end
    end
  end

  describe 'GET /index' do
    context 'when accessing root page' do
      before { get root_path }

      it 'returns status code 200' do
        expect(response).to have_http_status :ok
      end
    end
  end
end
