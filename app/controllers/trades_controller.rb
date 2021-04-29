# frozen_string_literal: true

class TradesController < ApplicationController
  ACCEPTED_FORMAT = '.txt'

  def cnab_upload
    if file_valid?
      head :ok
    else
      head :unprocessable_entity
    end
  end

  def trades_summary
    @trades_list = [{
      trade_type: 3,
      trade_date: Date.new(2019, 3, 1),
      amount: 1420.0,
      cpf: '096206760174',
      card_number: '4753****3153',
      trade_time: '153453',
      store_owner: 'JOÃO MACEDO',
      store_name: 'BAR DO JOÃO'
    }]

    head :ok
  end

  private

  def cnab_params
    params.permit(:cnab_filename)
  end

  def file_valid?
    File.extname(cnab_params[:cnab_filename]) == ACCEPTED_FORMAT
  end
end
