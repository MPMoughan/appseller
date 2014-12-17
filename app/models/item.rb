class Item < ActiveRecord::Base
  belongs_to :sale
  has_one :category

  has_uploadcare_file :file

end