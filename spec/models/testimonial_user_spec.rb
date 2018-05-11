require 'rails_helper'

RSpec.describe TestimonialUser, type: :model do
  describe "Creation" do
    before do
      @testimonial_user = create(:testimonial_user)
    end

    it 'can be created' do
      expect(@testimonial_user).to be_valid
    end
  end
end