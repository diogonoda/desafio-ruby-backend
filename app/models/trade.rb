# frozen_string_literal: true

class Trade < ApplicationRecord
  belongs_to :trade_type

  validates :trade_type, presence: true
  validates :trade_date, presence: true
  validates :amount, presence: true
  validates :cpf, presence: true
  validates :card_number, presence: true
  validates :time, presence: true
  validates :store_owner, presence: true
  validates :store_name, presence: true
end
