class UpdatePoll < ActiveRecord::Migration[5.1]
  def change
    remove_column :polls, :user_id
    add_column :polls, :author_id, :integer
    add_index :polls, :author_id
  end
end
