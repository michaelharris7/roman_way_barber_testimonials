class TestimonialUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_type, :user_name

  has_many :testimonials, dependent: :destroy
end
