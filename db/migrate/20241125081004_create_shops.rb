class CreateShops < ActiveRecord::Migration[7.2]
  def change
    create_table :shops do |t|
      t.jsonb :settings, null: false, default: '{}'

      t.timestamps
    end
  end
end
