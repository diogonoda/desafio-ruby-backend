# frozen_string_literal: true

class TradesController < ApplicationController
  ACCEPTED_FORMAT = '.txt'

  def cnab_upload
    if file_valid?
      CnabFileParser.call(cnab_params[:cnab_filename])

      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  def index
    @trades = Trade.all.order(:store_name).includes(:trade_type)

    @total_by_store = @trades.each_with_object(Hash.new(0)) do |trade, acc|
      acc[trade.store_name] = acc[trade.store_name].send(
        trade.trade_type.operator,
        trade.amount
      )
    end
  end

  private

  def cnab_params
    params.permit(:cnab_filename)
  end

  def file_valid?
    File.extname(cnab_params[:cnab_filename]) == ACCEPTED_FORMAT
  end
end
