require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validating artist" do
    it { is_expector.to validate_presence_of(:name)}
  end
end
