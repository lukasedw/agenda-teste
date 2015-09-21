class Admin::Show < ActiveRecord::Base
  belongs_to :admin_bands, :class_name => 'Admin::Band', foreign_key: :band_id
end
