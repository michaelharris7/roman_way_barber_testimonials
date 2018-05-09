class FeaturedTestimonial < ApplicationRecord
  validates :content, presence: true
  validates :testimonial_id, presence: true
  validates :user_name, presence: true

  belongs_to :testimonial
end
