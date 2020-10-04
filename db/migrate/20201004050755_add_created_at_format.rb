class AddCreatedAtFormat < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :created_at, :datatime
  end
end
