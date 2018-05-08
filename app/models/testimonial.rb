class Testimonial < ApplicationRecord
  validates :content, presence: true
  validates :testimonial_user_id, presence: true
  validates :custom_user, presence: true

  belongs_to :testimonial_user
end
