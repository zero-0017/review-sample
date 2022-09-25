class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :shop, null: false, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
