class AddUserEmitIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :user_emit_id, :integer
  end
end
