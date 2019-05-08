class Exercise < ApplicationRecord
  has_many :exercise_sessions
  has_many :sessions, through: :exercise_sessions
end
