# frozen_string_literal: true

require "rspec/core/rake_task"

def build_rspec_opts(params)
  opts = params[:tags].map { |tag| "-t #{tag}" } unless params[:tags].empty?
  opts.join(" ")
end

task :elements do |_task, args|
  RSpec::Core::RakeTask.new(:run) do |t|
    t.rspec_opts = build_rspec_opts(tags: args.extras)
  end

  Rake::Task[:run].invoke
end
