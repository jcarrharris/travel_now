class AddDestinationIdToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :destination_id, :integer
  end
end
