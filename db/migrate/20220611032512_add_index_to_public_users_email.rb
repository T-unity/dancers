class AddIndexToPublicUsersEmail < ActiveRecord::Migration[7.0]
  def change
    add_index :public_users, :email, unique: true
  end
end
