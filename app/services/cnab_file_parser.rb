# frozen_string_literal: true

class CnabFileParser < ApplicationService
  class NoContentFile < StandardError; end

  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def call
    raise NoContentFile if File.empty?(filename)

    File.foreach(filename) do |line|
      Trade.create!(parse(line))
    rescue StandardError => e
      Rails.logger.error(
        "Failed to create trade record. error: #{e.message}."\
        "Line from Cnab File: #{line}"
      )
    end
  end

  private

  def parse(line)
    {
      trade_type: TradeType.find_by(mode: line[0]),
      trade_date: Date.parse(line[1..8]),
      amount: line[9..18].to_f / 100,
      cpf: line[19..29],
      card_number: line[30..41],
      time: line[42..47],
      store_owner: line[48..61].strip,
      store_name: line[62..80].strip
    }
  end
end
