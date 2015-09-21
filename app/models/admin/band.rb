class Admin::Band < ActiveRecord::Base
  belongs_to :admin_categories, :class_name => 'Admin::Category', foreign_key: :category_id
  has_many :admin_show, :class_name => 'Admin::Show'
end
