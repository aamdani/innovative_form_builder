module ApplicationHelper
  include Pagy::Frontend

  def add_child_link(name, f, method)
    fields = new_child_fields(f, method)
    link_to name, "#", onclick: h("insert_fields(this, \"#{method}\", \"#{escape_javascript(fields)}\")")
  end

  def new_child_fields(form_builder, method, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
    options[:partial] ||= method.to_s.singularize
    options[:form_builder_local] ||= :f
    form_builder.fields_for(method, options[:object], child_index: "new_#{method}") do |f|
      render(partial: options[:partial], locals: {options[:form_builder_local] => f})
    end
  end

  def remove_child_link(name, f)
    child_link_path = link_to name, "#", onclick: "remove_fields(this)"
    f.hidden_field(:delete) + child_link_path
  end
end
