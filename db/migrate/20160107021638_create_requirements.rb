class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :field

      t.timestamps null: false
    end
  end
end
