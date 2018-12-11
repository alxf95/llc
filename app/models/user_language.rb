class UserLanguage < ApplicationRecord
  LEVELS = ["Beginner", "Intermediate", "Advanced"]
  belongs_to :user
  belongs_to :language
  validates :user_level, presence: true, inclusion: { in: LEVELS }
end
