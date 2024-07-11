class AddColumnsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :cnic, :string
    add_column :users, :age, :integer
  end
end
