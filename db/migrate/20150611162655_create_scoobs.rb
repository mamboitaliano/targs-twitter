class CreateScoobs < ActiveRecord::Migration
  def change
    create_table :scoobs do |t|
      t.integer :user_id
      t.string :body
      t.timestamps
    end
  end
end
