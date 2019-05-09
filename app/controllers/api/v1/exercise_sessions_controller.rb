class Api::V1::ExerciseSessionsController < ApplicationController
  def index
    @exercise = ExerciseSession.all
    render json: @exercise
  end

  def create
    @exercise_session = ExerciseSession.new(exercise_session_params)

    if @exercise_session.save
      render json: @exercise_session
    else
      render json: { errors: @exercise_session.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def exercise_session_params
    params.permit(:weight, :reps, :distance, :time, :session_id, :exercise_id)
  end
end
