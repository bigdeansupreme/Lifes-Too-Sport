class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :team_id
      t.integer :sport_id

      t.timestamps
    end
  end
end
