# -*- ruby -*-

require 'rubygems'
require 'hoe'
gem 'rake-compiler', '>= 0.4.1'
require "rake/extensiontask"

name = 'neversaydie'
HOE = Hoe.spec name do
  developer('Aaron Patterson', 'aaronp@rubyforge.org')
  self.readme_file   = 'README.rdoc'
  self.history_file  = 'CHANGELOG.rdoc'
  self.extra_rdoc_files  = FileList['*.rdoc']
end

RET = Rake::ExtensionTask.new(name, HOE.spec) do |ext|
  ext.lib_dir = File.join('lib', name)
end

# vim: syntax=ruby
