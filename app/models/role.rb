class Role < ActiveRecord::Base
  attr_accessible :name, :notes, :tags
end
