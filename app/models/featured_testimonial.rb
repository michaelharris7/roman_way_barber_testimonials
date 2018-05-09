class FeaturedTestimonial < ApplicationRecord
  validates :content, presence: true
  validates :testimonial_user_id, presence: true

  belongs_to :testimonial
end
