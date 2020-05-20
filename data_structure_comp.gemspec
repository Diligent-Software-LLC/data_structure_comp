require_relative './lib/data_structure_comp/version'

Gem::Specification.new do |spec|

  # Required attributes.
  spec.name                  = "data_structure_comp"
  spec.version               = DataStructureComp::VERSION
  spec.authors               = ["Diligent Software LLC"]
  spec.email                 = ["contact@diligentsoftware.org"]
  spec.summary               = %q{A DataStructure composition. Composites the
Interface and Implementation.}
  spec.description           = %q{A DataStructure composition. Composites the 
Interface and Implementation. Donations support continuous improvement and
maintenance. The aim is a reliable, integrable, and endurable DataStructure
library. Make a donation at the project's collective page:
https://opencollective.com/datastructure. One-time and recurring donations
are available at $1, $2, $4, $8, and $16. Greatly appreciated.}
  spec.homepage              = "https://docs.diligentsoftware.org/datastructure"
  spec.license               = "GPL-3.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.5")

  # Metadata.
  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] =
      "https://github.com/Diligent-Software-LLC/data_structure_comp"
  spec.metadata['changelog_uri']   =
      "https://docs.diligentsoftware.org/datastructure-1" +
          "/packages#composition_changelog"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been 
  # added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f|
      f.match(%r{^(test|spec|features)/})
    }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Development and testing dependencies.
  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'simplecov', '~> 0'
  spec.add_development_dependency 'node', '~> 4'
  spec.add_development_dependency 'linked_list_library', '~> 0'

  # Gem specific runtime dependencies
  spec.add_runtime_dependency 'data_structure_int', '~> 1'
  spec.add_runtime_dependency 'data_structure_impl', '~> 1'

end

