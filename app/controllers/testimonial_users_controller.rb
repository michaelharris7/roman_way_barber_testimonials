class TestimonialUsersController < ApplicationController
before_action :set_testimonial_user, only: [:show, :update, :destroy]

  def index
    @testimonial_users = TestimonialUser.all
    render json: @testimonial_users
  end

  def show
    @testimonial_users = TestimonialUser.find(params[:id])
    # @testimonial_users = TestimonialUser.includes(:comments).find(params[:id])
    # @comment = Comment.new

    render json: @testimonial_users
  end

  def create
    @testimonial_user = TestimonialUser.new(testimonial_user_params)

    if @testimonial_user.save
      render json: @testimonial_user, status: :created, location: @testimonial_user
    else
      render json: @testimonial_user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @testimonial_user.update(testimonial_user_params)
      render json: @testimonial_user
    else
      render json: @testimonial_user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @testimonial_user.destroy
  end

  private

  def set_testimonial_user
    @testimonial_user = TestimonialUser.find(params[:id])
  end

  def testimonial_user_params
    params.require(:testimonial_user).permit(:user_id, :user_type, :user_name)
  end
end
