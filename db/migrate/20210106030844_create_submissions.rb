class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :custom_form, null: false, foreign_key: true
      t.jsonb :responses

      t.timestamps
    end
  end
end
