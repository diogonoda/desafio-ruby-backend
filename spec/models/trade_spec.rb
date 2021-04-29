# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Trade, type: :model do
  it { should belong_to(:trade_type) }

  it { should validate_presence_of(:trade_type) }
  it { should validate_presence_of(:trade_date) }
  it { should validate_presence_of(:amount) }
  it { should validate_presence_of(:cpf) }
  it { should validate_presence_of(:card_number) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:store_owner) }
  it { should validate_presence_of(:store_name) }
end
