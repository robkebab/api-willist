class Tag < ApplicationRecord
    has_many :course_tags
    has_many :courses, through: :course_tags
    has_many :link_tags 
    has_many :links, through: :link_tags
end
