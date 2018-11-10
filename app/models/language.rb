class Language < ApplicationRecord
  LANGUAGES = ["Arabic", "Urdu", "Irish"]
  validates :name, presence: true, inclusion: { in: LANGUAGES }
  has_many :users, through: :user_languages
end
