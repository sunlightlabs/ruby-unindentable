Gem::Specification.new do |s|
  s.name = %q{unindentable}
  s.version = "0.0.4"

  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new(">= 0")
  end
  
  s.authors = ["David James"]
  s.date = %q{2010-04-20}
  s.description = %q{Unindent strings, especially heredocs.}
  s.email = ["djames at sunlightfoundation.com"]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "lib/unindentable.rb",
    "spec/unindentable_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{With Unindentable, you can write heredocs without worry of wonky indentation.}
  s.test_files = [
    "spec/unindentable_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sunlightlabs/ruby-unindentable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.add_development_dependency('rspec', '~> 2.3')
end
