class AddWealthScoreToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wealth_score, :integer
  end
end
