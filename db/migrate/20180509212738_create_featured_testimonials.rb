class CreateFeaturedTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :featured_testimonials do |t|
      t.integer :testimonial_id
      t.text :content

      t.timestamps
    end
  end
end
