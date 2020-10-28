class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :title, null: false
      t.string  :slug, unique: true, null: false
      t.text    :description
      t.boolean :active, default: true
      t.boolean :featured, default: false

      t.timestamps
    end

    add_reference :items, :category, index: true
  end
end
