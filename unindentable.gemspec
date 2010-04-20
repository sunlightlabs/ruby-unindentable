Gem::Specification.new do |s|
  s.name = %q{unindentable}
  s.version = "0.0.3"

  if s.respond_to? :required_rubygems_version=
    s.required_rubygems_version = Gem::Requirement.new(">= 0")
  end
  
  s.authors = ["David James"]
  s.date = %q{2010-04-20}
  s.description = %q{Unindent strings, especially heredocs.}
  s.email = ["djames at sunlightfoundation.com"]
  s.files = [
    "LICENSE",
    "README.md",
    "lib/unindentable.rb",
    "spec/unindentable_spec.rb"
  ]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{With Unindentable, you can write heredocs without worry of wonky indentation.}
  s.test_files = [
    "spec/unindentable_spec.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sunlightlabs/ruby-unindentable/tree}
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
end
