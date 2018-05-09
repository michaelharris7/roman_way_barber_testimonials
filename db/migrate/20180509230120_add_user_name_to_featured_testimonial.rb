class AddUserNameToFeaturedTestimonial < ActiveRecord::Migration[5.1]
  def change
    add_column :featured_testimonials, :user_name, :string
  end
end
