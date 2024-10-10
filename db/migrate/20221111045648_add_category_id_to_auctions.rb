class AddCategoryIdToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_column :auctions, :category_id, :integer
  end
end
