class AddSellerToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_column :auctions, :seller, :integer
  end
end
