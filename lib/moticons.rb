unless defined?(Motion::Project::Config)
  raise "This gem is intended to be used in a RubyMotion project."
end

require "motion-cocoapods"

Motion::Project::App.setup do |app|
  app.files += Dir.glob(File.join(File.dirname(__FILE__), "moticons", "**", "*.rb"))
  app.pods do
    pod "FontAwesomeKit", git: 'https://github.com/robbiet480/FontAwesomeKit.git'
  end
end
