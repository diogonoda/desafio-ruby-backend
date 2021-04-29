require 'rails_helper'

RSpec.describe TradeType, type: :model do
  it { should have_many(:trades).dependent(:restrict_with_exception) }

  it { should validate_presence_of(:mode) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:nature) }
  it { should validate_presence_of(:operator) }
end
