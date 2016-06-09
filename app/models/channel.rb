class Channel < ActiveRecord::Base
  has_many :broadcasts
  has_many :matches, :through => :broadcasts
end
