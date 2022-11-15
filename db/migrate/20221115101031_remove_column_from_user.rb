class RemoveColumnFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :description, :text 
  end
end
