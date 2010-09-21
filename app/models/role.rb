class Role < ActiveRecord::Base
  attr_accessible :name, :notes, :tags
  validates_uniqueness_of :name #, :message => "must be unique"
  #  validates_uniqueness_of :name, :on => :create, :message => "must be unique"
  
  def to_s
    self.name # .capitalize
  end
end
