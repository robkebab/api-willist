class Course < ApplicationRecord
  belongs_to :user
  has_many :links
  has_many :course_tags
  has_many :tags, through: :course_tags
end
