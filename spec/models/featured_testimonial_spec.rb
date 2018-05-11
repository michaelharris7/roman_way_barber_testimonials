require 'rails_helper'

RSpec.describe FeaturedTestimonial, type: :model do
  describe "Creation" do
    before do
      @featured_testimonial = create(:featured_testimonial)
    end

    it 'can be created' do
      expect(@featured_testimonial).to be_valid
    end
  end
end