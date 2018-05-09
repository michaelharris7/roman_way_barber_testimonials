class AddCustomUserToFeaturedTestimonial < ActiveRecord::Migration[5.1]
  def change
    add_column :featured_testimonials, :custom_user, :string
  end
end
