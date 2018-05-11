require 'rails_helper'

describe 'navigate' do
  let(:featured_testimonial) do
    create(:featured_testimonial)
  end

  describe 'index' do
    before do
      visit featured_testimonials_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit featured_testimonial_path(featured_testimonial)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      featured_testimonial_to_delete = create(:featured_testimonial)

      visit featured_testimonials_path(featured_testimonial_to_delete)

      expect{featured_testimonial_to_delete.destroy}.to change(FeaturedTestimonial, :count).by(-1)
    end
  end
end