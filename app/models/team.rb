class Team < ApplicationRecord
    validates :name, :presence => true, :on => :create
    belongs_to :tournament, optional: true
    has_many :players
end
