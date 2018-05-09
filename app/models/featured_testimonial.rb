class FeaturedTestimonial < ApplicationRecord
  validates :content, presence: true
  validates :testimonial_id, presence: true

  belongs_to :testimonial
end
