class Session < ApplicationRecord
  belongs_to :user
  has_many :exercise_sessions
  has_many :exercises, through: :exercise_sessions
end
