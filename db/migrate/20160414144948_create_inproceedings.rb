class CreateInproceedings < ActiveRecord::Migration
  def change
    create_table :inproceedings do |t|
      t.string, :author
      t.string, :title
      t.string, :year
      t.string :booktitle

      t.timestamps null: false
    end
  end
end
