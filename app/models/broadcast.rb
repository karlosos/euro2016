class Broadcast < ActiveRecord::Base
  belongs_to :channel
  belongs_to :match
end
