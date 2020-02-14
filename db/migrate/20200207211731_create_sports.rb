class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :background_image

      t.timestamps
    end
  end
end
