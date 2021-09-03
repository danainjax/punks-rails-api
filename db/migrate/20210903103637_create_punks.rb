class CreatePunks < ActiveRecord::Migration[6.1]
  def change
    create_table :punks do |t|
      t.string :type
      t.string :image
      t.string :accessories

      t.timestamps
    end
  end
end
