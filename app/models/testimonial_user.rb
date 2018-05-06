class TestimonialUser < ApplicationRecord
  validates :user_id, presence: true
  validates :user_type, presence: true
  validates :user_name, presence: true

  has_many :testimonials, dependent: :destroy
end
