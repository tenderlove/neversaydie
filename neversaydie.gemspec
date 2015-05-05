# -*- encoding: utf-8 -*-
# stub: neversaydie 1.0.0.20150505165043 ruby lib
# stub: ext/neversaydie/extconf.rb

Gem::Specification.new do |s|
  s.name = "neversaydie"
  s.version = "1.0.0.20150505165043"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aaron Patterson"]
  s.date = "2015-05-05"
  s.description = "NEVER SAY DIE lets you rescue from segmentation faults.  Got a SEGV, don't\nworry about it anymore!  Just rescue an exception and get on with life.  Who\ncares about getting a SEGV anyway?  It's just memory.  I mean, when I was in\nschool, I didn't need 100% to pass the class.  Why should your memory need to\nbe 100% correct to get the job done?  A little memory corruption here and there\ndoesn't hurt anyone.\n\nSo go for it!  Kick back, grab a beer, require the NEVER SAY DIE gem and let\nyour problems go away sometimes!"
  s.email = ["aaronp@rubyforge.org"]
  s.extensions = ["ext/neversaydie/extconf.rb"]
  s.extra_rdoc_files = ["CHANGELOG.ja.rdoc", "CHANGELOG.rdoc", "Manifest.txt", "README.ja.rdoc", "README.rdoc", "CHANGELOG.ja.rdoc", "CHANGELOG.rdoc", "README.ja.rdoc", "README.rdoc"]
  s.files = [".autotest", ".gemtest", "CHANGELOG.ja.rdoc", "CHANGELOG.rdoc", "Manifest.txt", "README.ja.rdoc", "README.rdoc", "Rakefile", "ext/neversaydie/extconf.rb", "ext/neversaydie/neversaydie.c", "lib/neversaydie.rb", "test/test_never_say_die.rb"]
  s.homepage = "http://seattlerb.rubyforge.org"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.rubygems_version = "2.4.5"
  s.summary = "NEVER SAY DIE lets you rescue from segmentation faults"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.13"])
    else
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.13"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.13"])
  end
end
