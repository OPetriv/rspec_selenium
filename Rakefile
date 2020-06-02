# frozen_string_literal: true

require "rspec/core/rake_task"

def build_rspec_opts(params)
  opts = params[:tags].map { |tag| "-t #{tag}" } unless params[:tags].empty?
  opts.join(" ")
end

desc "rake elements[@tag,@tag]"
task :develop do |_task, args|
  RSpec::Core::RakeTask.new(:run) do |t|
    t.rspec_opts = build_rspec_opts(tags: args.extras)
  end

  Rake::Task[:run].invoke
end

desc "without arg run all features"
task :parallel_scenario do |_task, args|
  tags = args.to_a.empty? ? "" : build_rspec_opts(tags: args.extras)
  exec "parallel_split_test spec/ #{tags}"
end

desc "parallel by features"
task :parallel_features do |_task|
  exec "parallel_rspec spec/"
end