class AddExpirationToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_column :auctions, :expiration_date, :date
  end
end
