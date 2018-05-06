class TestimonialSerializer < ActiveModel::Serializer
  attributes :id, :content, :testimonial_user_id

  belongs_to :testimonial_user
end
