class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :bio
      t.string :profile_pic
      t.string :password_digest

      t.timestamps
    end
  end
end
