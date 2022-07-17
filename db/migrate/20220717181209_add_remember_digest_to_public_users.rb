class AddRememberDigestToPublicUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :public_users, :remember_digest, :string
  end
end
