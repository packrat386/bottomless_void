require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'rake/extensiontask'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = "spec/*_spec.rb"
end

Rake::ExtensionTask.new do |ext|
  ext.name = 'bottomless_void'
  ext.source_pattern = "*.{c,h}"
  ext.ext_dir = 'ext/bottomless_void'
  ext.lib_dir = 'lib/bottomless_void'
  ext.gem_spec = Gem::Specification.load('bottomless_void.gemspec')
end

task :default => [:compile, :spec]
