class Admin::Category < ActiveRecord::Base
  has_many :admin_band, :class_name => 'Admin::Band'
end
