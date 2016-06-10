class Log < ActiveRecord::Base
  belongs_to :prediction
  belongs_to :user

  scope :last_logs, lambda { self.all.order('created_at desc').limit(10) }
end
