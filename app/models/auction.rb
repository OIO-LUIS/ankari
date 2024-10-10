class Auction < ApplicationRecord
    belongs_to :user
    belongs_to :category
    validates :name, presence: true

    require 'digest'

    def time_left (exp_time)
        time_left = exp_time - Time.now
        return time_left
    end 


    include ImageUploader::Attachment(:image)
end
