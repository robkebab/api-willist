class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :text
      t.string :url

      t.timestamps
    end
  end
end
