class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.references :owner, foreign_key: {to_table: :users}
      t.references :customer, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
