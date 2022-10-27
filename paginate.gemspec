require_relative "lib/paginate/version"

Gem::Specification.new do |spec|
  spec.name        = "paginate"
  spec.version     = Paginate::VERSION
  spec.authors     = ["Daniel Torres"]
  spec.email       = ["denial.torres@gmail.com"]
  spec.summary     = "Practicing our engine skills"
  spec.license     = "MIT"


  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 7.0.0 "
end
