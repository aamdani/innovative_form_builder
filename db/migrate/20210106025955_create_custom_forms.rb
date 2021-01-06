class CreateCustomForms < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_forms do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
