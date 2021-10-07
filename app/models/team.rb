class Team < ApplicationRecord
    validates :name, :presence => true, :on => :create
    belongs_to :tournament
end
