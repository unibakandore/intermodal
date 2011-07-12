# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{intermodal}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ho-Sheng Hsiao"]
  s.date = %q{2011-07-12}
  s.description = %q{Declarative DSL for top-level, nested, linked CRUD resource endpoints; DSL for Presenters and Acceptors; API Versioning}
  s.email = %q{hosh@sparkfly.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README"
  ]
  s.files = [
    "LICENSE",
    "README",
    "Rakefile",
    "VERSION",
    "lib/intermodal/base.rb",
    "lib/intermodal/concerns/acceptors/named_resource.rb",
    "lib/intermodal/concerns/acceptors/resource.rb",
    "lib/intermodal/concerns/controllers/accountability.rb",
    "lib/intermodal/concerns/controllers/anonymous.rb",
    "lib/intermodal/concerns/controllers/resource.rb",
    "lib/intermodal/concerns/controllers/resource_linking.rb",
    "lib/intermodal/concerns/let.rb",
    "lib/intermodal/concerns/models/accountability.rb",
    "lib/intermodal/concerns/models/has_parent_resource.rb",
    "lib/intermodal/concerns/models/presentation.rb",
    "lib/intermodal/concerns/models/resource_linking.rb",
    "lib/intermodal/concerns/presenters/named_resource.rb",
    "lib/intermodal/concerns/presenters/resource.rb",
    "lib/intermodal/controllers/linking_resource_controller.rb",
    "lib/intermodal/controllers/nested_resource_controller.rb",
    "lib/intermodal/controllers/resource_controller.rb",
    "lib/intermodal/declare_controllers.rb",
    "lib/intermodal/mapping.rb",
    "lib/intermodal/mapping/acceptor.rb",
    "lib/intermodal/mapping/dsl.rb",
    "lib/intermodal/mapping/mapper.rb",
    "lib/intermodal/mapping/presenter.rb"
  ]
  s.homepage = %q{http://github.com/hosh/intermodal}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Intermodal lets you quickly put together a pure, JSON/XML-only RESTful web service.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

