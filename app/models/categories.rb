class Categories < ActiveRecord::Base
  has_many_and_belongs_to :items
end