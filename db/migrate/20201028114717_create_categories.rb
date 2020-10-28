class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string  :name, null: false
      t.string  :slug, null: false
      t.boolean :featured, default: false
      t.boolean :parent, default: false
      t.integer :parent_id, default: 0
      
      t.timestamps
    end

    add_index :categories, :slug, unique: true
  end
end
