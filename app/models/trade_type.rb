# frozen_string_literal: true

class TradeType < ApplicationRecord
  has_many :trades, dependent: :restrict_with_exception

  enum nature: %i[Entrada Saída]

  validates :mode, presence: true
  validates :name, presence: true
  validates :nature, presence: true
  validates :operator, presence: true
end
