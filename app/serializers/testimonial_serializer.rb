class TestimonialSerializer < ActiveModel::Serializer
  attributes :id, :content, :testimonial_user_id, :custom_user

  belongs_to :testimonial_user
end
