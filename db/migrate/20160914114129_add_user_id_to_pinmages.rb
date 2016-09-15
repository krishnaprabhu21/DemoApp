class AddUserIdToPinmages < ActiveRecord::Migration[5.0]
  def change
    add_column :pinmages, :user_id, :integer
    add_index :pinmages, :user_id
  end
end
