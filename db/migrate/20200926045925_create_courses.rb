class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :blurb
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
