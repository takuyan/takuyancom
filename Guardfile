notification :gntp

# A sample Guardfile
# More info at https://github.com/guard/guard#readme
guard :coffeescript, input: 'assets/javascripts', output: 'public/assets/javascripts', bare: true

# Sample guardfile block for Guard::Haml
# You can use some options to change guard-haml configuration
# output: 'public'                   set output directory for compiled files
# input: 'src'                       set input directory with haml files
# run_at_start: true                 compile files when guard starts
# notifications: true                send notifictions to Growl/libnotify/Notifu
# haml_options: { ugly: true }    pass options to the Haml engine
guard :haml, input: 'haml', output: 'public' do
  #watch(/^.+(\.html\.haml)/)
  watch %r{^haml/.+\.haml}
end

guard :sass, input: 'assets/stylesheets', output: 'public/assets/stylesheets'
