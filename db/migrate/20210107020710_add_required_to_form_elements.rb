class AddRequiredToFormElements < ActiveRecord::Migration[6.1]
  def change
    add_column :form_elements, :tag, :string
    add_column :form_elements, :values, :text
    add_column :form_elements, :required, :boolean
    change_column :form_elements, :position, :integer, using: "position::integer"
  end
end
