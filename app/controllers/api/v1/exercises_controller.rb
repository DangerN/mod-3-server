class Api::V1::ExercisesController < ApplicationController
  def index
    @exercise = Exercise.all
    render json: @exercise
  end

  def create
    # respond_with 'whyisthissohard'
    render json: @note
  end
end
