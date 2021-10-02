class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :punk_id
      t.integer :user_id
      t.boolean :count

      t.timestamps
    end
  end
end
