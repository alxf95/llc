class UserLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :user_level, presence: true, inclusion: { in: ["Beginner", "Intermediate", "Advanced"] }
end
