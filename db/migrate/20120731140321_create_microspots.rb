class CreateMicrospots < ActiveRecord::Migration
  def change
    create_table :microspots do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
