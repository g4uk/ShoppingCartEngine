class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
