require 'redmine'
require 'uv'

require 'ultraviolet_syntax_patch'

Redmine::Plugin.register :redmine_ultraviolet do
  name 'Redmine Ultraviolet Syntax highlighting plugin'
  author 'Chris Gahan'
  description "Uses Textmate's syntaxes to highlight repository files."
  version '0.0.1'
end
