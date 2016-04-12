require File.join( Rails.root, "config/initializers/app_config" )

namespace :element do
ENV['SERVER']   = AppConfig.servers
 desc "all test"
  task all: :environment do
    task('spec').clear
    Rake::Task["element:main"].invoke
  end


desc "check main page"
  task :main => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/main_page_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_main.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "basic auth"
  task :basicauth => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/basicauth_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_basic_auth.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "broken images"
  task :broken_images => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/brokenimages_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_broken_images.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "challenging dom"
  task :challenging_dom => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/challengingdom_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_challenging_dom.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "checkboxes"
  task :checkboxes => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/checkbox_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_checkbox.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "context menu"
  task :contextmenu => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/contextmenu_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_contextmenu.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "Disappearing elements"
  task :disappearingelements => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/disappearingelements_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_disappearing_elements.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "Dragand drop"
  task :draganddrop => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/draganddrop_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_draganddrop.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "Dropdown"
  task :dropdown => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/dropdown_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_dropdown.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "Exit intent"
  task :exitintent => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/exitintent_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_exitintent.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "File Upload"
  task :fileupload => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/fileupload_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_fileupload.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "File Download"
  task :filedownload => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/filedownload_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_filedownload.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end
end