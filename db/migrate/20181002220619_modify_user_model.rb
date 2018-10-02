class ModifyUserModel < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string, required: true
    remove_column :users, :password
  end
end
