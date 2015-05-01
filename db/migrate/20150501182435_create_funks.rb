class CreateFunks < ActiveRecord::Migration
  def change
    create_table :funks do |t|
      t.string :content, limit: 80

      t.timestamps null: false

      t.belongs_to :user
    end
  end
end
