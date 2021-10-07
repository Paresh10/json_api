class Team < ApplicationRecord
    validates :name, :presence => true, :on => :create
    belongs_to :tournament, optional: true
end
