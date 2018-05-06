class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.text :content
      t.integer :testimonial_user_id
      t.references :testimonial_user, foreign_key: true

      t.timestamps
    end
  end
end
