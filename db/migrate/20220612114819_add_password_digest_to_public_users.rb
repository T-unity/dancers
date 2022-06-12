class AddPasswordDigestToPublicUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :public_users, :password_digest, :string
  end
end
