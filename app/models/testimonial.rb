class Testimonial < ApplicationRecord
  validates :content, presence: true
  validates :testimonial_user_id, presence: true

  belongs_to :testimonial_user
  has_many :featured_testimonials, dependent: :destroy
end
