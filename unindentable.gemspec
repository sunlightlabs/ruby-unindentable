Gem::Specification.new do |s|
  s.name = %q{unindentable}
  s.version = "0.2.0"

  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new(">= 1.3")
  end

  s.authors = ["David James", "Luca Belmondo"]
  s.date = %q{2012-12-27}
  s.description = %q{Unindent strings, especially heredocs.}
  s.email = ["djames at sunlightfoundation.com"]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "lib/unindentable.rb",
    "spec/spec_helper.rb",
    "spec/unindent_spec.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Write heredocs without the unwanted extra indentation.}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/unindent_spec.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sunlightlabs/ruby-unindentable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.add_development_dependency('rspec', '~> 2.12.0')
end
