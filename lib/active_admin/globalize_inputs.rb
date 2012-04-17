module ActiveAdmin
  class FormBuilder
    def globalize_inputs(*args, &proc)
      content = with_new_form_buffer { super }
      form_buffers.last << content.html_safe
    end
  end
end
