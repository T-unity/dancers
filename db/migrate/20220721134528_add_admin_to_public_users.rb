class AddAdminToPublicUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :public_users, :admin, :boolean, default: false
  end
end
