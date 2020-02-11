class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.integer :weight_pounds
      t.integer :team_id

      t.timestamps
    end
  end
end
