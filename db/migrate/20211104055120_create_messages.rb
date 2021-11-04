class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.content :string
      t.user :references, null: false, foreign_key: true
      t.room :references, null: false, foreign_key: true
      t.timestamps
    end
  end
end
