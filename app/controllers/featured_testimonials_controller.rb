class FeaturedTestimonialsController < ApplicationController
  before_action :set_featured_testimonial, only: [:show, :update, :destroy]

  def index
    @featured_testimonials = FeaturedTestimonial.all
    render json: @featured_testimonials
  end

  def show
    render json: @featured_testimonial
  end

  def create
    @featured_testimonial = FeaturedTestimonial.new(featured_testimonial_params)

    if @featured_testimonial.save
      render json: @featured_testimonial, status: :created, location: @featured_testimonial
    else
      render json: @featured_testimonial.errors, status: :unprocessable_entity
    end
  end

  def update
    if @featured_testimonial.update(article_params)
      render json: @featured_testimonial
    else
      render json: @featured_testimonial.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @featured_testimonial.destroy
  end

  private

  def set_featured_testimonial
    @featured_testimonial = FeaturedTestimonial.find(params[:id])
  end

  def featured_testimonial_params
    params.require(:featured_testimonial).permit(:testimonial_id, :content, :user_name, :custom_user)
  end
end