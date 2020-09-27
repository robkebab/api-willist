class AddCourseToLinks < ActiveRecord::Migration[6.0]
  def change
    add_reference :links, :course, null: false, foreign_key: true
  end
end
