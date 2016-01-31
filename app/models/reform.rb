class Reform < ActiveRecord::Base
  validates_presence_of :client
  validates_presence_of :description
end
