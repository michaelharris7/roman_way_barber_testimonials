class AddCustomUserToTestimonials < ActiveRecord::Migration[5.1]
  def change
    add_column :testimonials, :custom_user, :string
  end
end
