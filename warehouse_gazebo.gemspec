# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "warehouse_gazebo"
  spec.version       = "0.3.3"
  spec.authors       = ["Jorge Luiz"]
  spec.email         = ["jorgefilho@eng.ci.ufpb.br"]

  spec.summary       = %q{A modern, highly customizable, and responsive Jekyll theme for documention with built-in search.}
  spec.homepage      = "https://github.com/LASER-Robotics"
  spec.license       = "LASER - UFPB"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|bin|_layouts|_includes|lib|Rakefile|_sass|LICENSE|README)}i) }
  spec.executables   << 'warehouse_gazebo'

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_runtime_dependency "jekyll", ">= 3.8.5"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
  spec.add_runtime_dependency "rake", ">= 12.3.1", "< 13.1.0"

end
