class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.integer :song_id
      t.integer :user_id

      t.timestamps
    end
  end
end
