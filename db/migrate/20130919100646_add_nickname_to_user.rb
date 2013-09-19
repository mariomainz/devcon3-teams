class AddNicknameToUser < ActiveRecord::Migration
  def change
    add_column :users, :nick_name, :string
    add_column :users, :password, :string
  end
end
