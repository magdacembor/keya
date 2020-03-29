class CreateKayaks < ActiveRecord::Migration[6.0]
  def change
    create_table :kayaks do |t|
      t.string :name
      t.string :description
      t.string :colour

      t.timestamps
    end
  end
end
