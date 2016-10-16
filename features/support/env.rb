Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), "../pages")) + "/**/*.rb"].each do |file|
  require file
end
