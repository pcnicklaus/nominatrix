class Nomination < ApplicationRecord
    has_many :votes
    belongs_to :user

    accepts_nested_attributes :votes
end
