class TestimonialsController < ApplicationController
  before_action :set_testimonial, only: [:show, :update, :destroy]

  def index
    @testimonials = Testimonial.all
    render json: @testimonials
  end

  def show
    @testimonial = Testimonial.find(params[:id])

    render json: @testimonial
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)

    if @testimonial.save
      render json: @testimonial, status: :created, location: @testimonial
    else
      render json: @testimonial.errors, status: :unprocessable_entity
    end
  end

  def update
    if @testimonial.update(testimonial_params)
      render json: @testimonial
    else
      render json: @testimonial.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @testimonial.destroy
  end

  private

  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:content, :testimonial_user_id)
  end
end