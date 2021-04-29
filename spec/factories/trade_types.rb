# frozen_string_literal: true

FactoryBot.define do
  factory :trade_type do
    mode { 3 }
    name { 'Financiamento' }
    nature { 0 }
    operator { '-' }
  end
end
