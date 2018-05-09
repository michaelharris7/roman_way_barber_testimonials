class FeaturedTestimonialSerializer < ActiveModel::Serializer
  attributes :id, :testimonial_id, :content, :user_name, :custom_user
end
