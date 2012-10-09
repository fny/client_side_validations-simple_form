require 'simple_form/cases/helper'

class ClientSideValidations::SimpleForm::FormBuilderTest < Test::Unit::TestCase
  def test_client_side_form_js_hash
    expected = {
      :type => 'SimpleForm::FormBuilder',
      :error_class => :error,
      :error_tag => :span,
      :wrapper_error_class => :field_with_errors,
      :wrapper_tag => :div
    }
    builder = SimpleForm::FormBuilder.new(:user, nil, {}, {}, Proc.new {})
    assert_equal expected, builder.client_side_form_settings({}, nil)
  end
end

