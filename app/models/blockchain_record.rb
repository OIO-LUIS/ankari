class BlockchainRecord < ActiveRecord::Base

    self.abstract_class = true
    connects_to database: { writing: :blockchain, reading: :blockchain }
  
  end
  