class CreateFormElements < ActiveRecord::Migration[6.1]
  def change
    create_table :form_elements do |t|
      t.string :label
      t.string :input_type
      t.string :position
      t.references :custom_form, null: false, foreign_key: true

      t.timestamps
    end
  end
end
