class Tournament < ApplicationRecord
    validates :name, :presence => true, :on => :create
    validates :city, :presence => true, :on => :create
    validates :state, :presence => true, :on => :create
    validates :start_date, :presence => true, :on => :create
end
