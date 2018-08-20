class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :message
      t.references :booking, foreign_key: true
      t.references :owner, foreign_key: {to_table: :users}
      t.references :customer, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
