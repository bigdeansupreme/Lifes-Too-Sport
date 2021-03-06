class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :weight_pounds
      t.integer :jersey_number
      t.integer :years_pro
      t.string :nationality
      t.string :university
      t.float :ppg
      t.float :apg
      t.float :rpg
      t.float :spg
      t.float :tpg
      t.float :fpg
      t.float :mpg
      t.integer :team_id

      t.timestamps
    end
  end
end
