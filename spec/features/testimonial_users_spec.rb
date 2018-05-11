require 'rails_helper'

describe 'navigate' do
  let(:testimonial_user) do
    create(:testimonial_user)
  end

  describe 'index' do
    before do
      visit testimonial_users_path
    end

    it 'can be reached successfully' do
      expect(page.status_code).to eq(200)
    end
  end

  describe 'show' do
    it 'can be reached successfully' do
      visit testimonial_user_path(testimonial_user)
      expect(page.status_code).to eq(200)
    end
  end

  describe 'delete' do
    it 'can be deleted' do
      testimonial_user_to_delete = create(:testimonial_user)

      visit testimonial_users_path(testimonial_user_to_delete)

      expect{testimonial_user_to_delete.destroy}.to change(TestimonialUser, :count).by(-1)
    end
  end
end