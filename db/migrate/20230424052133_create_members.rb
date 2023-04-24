class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.belongs_to :promotion, foreign_key: true
      t.string :name
      t.string :phrase
    
      t.timestamps
    end
  end
end
