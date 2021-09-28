class AddUserToPunk < ActiveRecord::Migration[6.1]
  def change
    add_reference :punks, :user, null: false, foreign_key: true
  end
end
