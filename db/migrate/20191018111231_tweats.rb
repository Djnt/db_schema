class Tweats < ActiveRecord::Migration[5.2]
  def change
    create_table :tweats do |t|
      t.string :title
      t.text :body
      t.references :user, foreign_key: true, index: true, unique: true

      t.timestamps
    end
  end
end
