# frozen_strig_literal: true

class TradesController < ApplicationController
  ACCEPTED_FORMAT = '.txt'

  def cnab_upload
    if file_valid?
      head :ok
    else
      head :unprocessable_entity
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
