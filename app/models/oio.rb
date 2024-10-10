class Oio < BlockchainRecord
    # before_save :add_blockchain
    require 'digest'

        #test
    # def add_blockchain
    #     data =  "The content"
    #     previous_hash = Oio.last
    #     previous_hash = previous_hash.hash
    #     digested = Digest::SHA256.hexdigest previous_hash
    #     puts "SHA256 previous_hash"
    #     puts "SHA256 previous_hash"
    #     puts "SHA256 previous_hash"
    #     block = CONTRACTS::Oiochain.new(0,"TEST",previous_hash)
    #     Oio.create(:hash => block, :index => 1, :previous_hash => digested)
    #     puts "BLOCKCHAIN"
    #     puts block

    # end
end
