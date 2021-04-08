class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.boolean :private
      t.belongs_to :user, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
