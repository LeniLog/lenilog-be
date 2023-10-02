class CreateComment < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :post_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
