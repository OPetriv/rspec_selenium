# frozen_string_literal: true

require "rspec/core/rake_task"

desc "Elements"
task :elements do
  task("spec").clear
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern       = "./spec/features/elements_spec.rb"
    t.fail_on_error = false
    t.verbose = false
  end
  Rake::Task["spec"].execute
end

