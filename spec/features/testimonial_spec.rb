require 'rails_helper'

describe 'navigate' do
  let(:testimonial) do
    create(:testimonial)
  end

  describe 'index' do
    before do
      visit testimonials_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit testimonial_path(testimonial)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      testimonial_to_delete = create(:testimonial)

      visit testimonials_path(testimonial_to_delete)

      expect{testimonial_to_delete.destroy}.to change(Testimonial, :count).by(-1)
    end
  end
end