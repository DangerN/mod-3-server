class Api::V1::ExercisesController < ApplicationController
  def index
    @exercise = Exercise.all
    render json: @exercise
  end

  def create
    @exercise = Exercise.create(exercise_params)
    render json: @exercise
  end

  private

  def exercise_params
    params.permit(:name, :exercise_type)
  end
end
