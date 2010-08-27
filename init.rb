require 'redmine'
require 'uv'

require 'ultraviolet_syntax_patch'

Redmine::Plugin.register :redmine_ultraviolet do
  name 'Redmine Ultraviolet Syntax highlighting plugin'
  author 'Andy Bailey & Chris Gahan'
  description "Uses Textmate's syntaxes to highlight repository files."
  version '0.0.2'
  
  UserCustomField.create(:name => 'Ultraviolet Theme', :is_required => true, :field_format => 'list', :default_value => 'cobalt', :possible_values => ['active4d','all_hallows_eve','amy','blackboard','brilliance_black','brilliance_dull','cobalt','dawn','eiffel','espresso_libre','idle','iplastic','lazy','mac_classic','magicwb_amiga','pastels_on_dark','slush_poppies','spacecadet','sunburst','twilight','zenburnesque'])  unless UserCustomField.find_by_name('Ultraviolet Theme')
end
