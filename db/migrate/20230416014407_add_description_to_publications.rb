class AddDescriptionToPublications < ActiveRecord::Migration[7.0]
  def change
    add_column :publications, :description, :text
  end
end
