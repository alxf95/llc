class AddUserLevelToUserLanguages < ActiveRecord::Migration[5.2]
  def change
    add_column :user_languages, :user_level, :string
  end
end
