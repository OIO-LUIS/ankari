class AddImageDataToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_column :auctions, :image_data, :text
  end
end
