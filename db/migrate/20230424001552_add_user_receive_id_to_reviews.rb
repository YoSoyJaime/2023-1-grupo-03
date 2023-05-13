class AddUserReceiveIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :user_receive_id, :integer
  end
end
