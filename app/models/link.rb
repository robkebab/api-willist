class Link < ApplicationRecord
    belongs_to :course
    has_many :link_tags
    has_many :tags, through: :link_tags
end
