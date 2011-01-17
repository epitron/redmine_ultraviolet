require 'redmine'

require 'uv'
require 'ultraviolet_syntax_patch'

Redmine::Plugin.register :redmine_ultraviolet do
  name "Redmine Ultraviolet Syntax highlighting plugin"
  author "Chris Gahan, Andy Bailey"
  description "Uses Textmate's syntaxes highlighters to highlight files in the source code repository."
  version "0.0.3"

  # Create a dropdown list in the UI so the user can pick a theme.
  if UserCustomField.table_exists?
    unless UserCustomField.find_by_name('Ultraviolet Theme')
      UserCustomField.create(
        :name             => 'Ultraviolet Theme', 
        :default_value    => Uv::DEFAULT_THEME, 
        :possible_values  => Uv::THEMES,  # see   ultraviolet_syntax_patch.rb
        :field_format     => 'list',
        :is_required      => true
      )
    end
  end
end
