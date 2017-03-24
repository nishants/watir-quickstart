require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

def options(config_file:  ENV["env"]          || "default",
            page_dir:     ENV["page_dir"]     || "default",
            data_suite:   ENV["data_suite"]   || "default",
            url:          ENV["url"]          || "default",
            report_file:  ENV["report_file"]  || "./reports/index.html",
            client:       ENV["client"]       || "default",
            users:        ENV["users"]        || "default",
            tags:         ENV["tags"]         || nil)

  "FIG_NEWTON_FILE=#{config_file}.yml page_dir=#{page_dir} data_suite=#{data_suite} url=#{url} --out=#{report_file} users=#{users} client=#{client} #{("--tags " + tags) unless tags.nil?}"
end

def create(name: , options:, profile: )
  Cucumber::Rake::Task.new(name) do |t|
    t.profile = "#{profile}"
    t.cucumber_opts = options
  end
end

bigweb_integration_options  = options
bigweb_functional_options   = options(url: "stubbed", users: "stubbed")

mobile_functional_options   = options(url: "stubbed", users: "stubbed", page_dir: "mobile", data_suite: "mobile", client: "iphone5")
mobile_integration_options  = options(page_dir: "mobile", data_suite: "mobile", client: "iphone5")


namespace :test do
  namespace :mobile do
    create(name: "integration", profile: "integration", options: mobile_integration_options)
    create(name: "functional" , profile: "functional" , options: mobile_functional_options)
    multitask :all => ["test:mobile:functional", :"test:mobile:integration"]
  end

  namespace :bigweb do
    create(name: "functional", profile: "functional", options: bigweb_functional_options)
    create(name: "integration", profile: "integration", options: bigweb_integration_options)
    multitask :all => ["test:bigweb:functional", :"test:bigweb:integration"]
  end

  task :all => ["test:bigweb:all", :"test:mobile:all"]
end

task(:default => "test:all")

