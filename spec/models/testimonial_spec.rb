require 'rails_helper'

RSpec.describe Testimonial, type: :model do
  describe "Creation" do
    before do
      @testimonial = create(:testimonial)
    end

    it 'can be created' do
      expect(@testimonial).to be_valid
    end
  end
end