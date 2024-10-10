class CreateOios < ActiveRecord::Migration[7.0]
  def change
    create_table :oios do |t|
      t.integer :index
      t.string :hash
      t.string :previous_hash
      t.string :seller_username
      t.string :buyer_username

      t.timestamps
    end
  end
end
