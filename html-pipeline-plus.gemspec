
require File.expand_path('../lib/html/pipeline_plus/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'html-pipeline-plus'
  gem.version       = HTML::Pipeline::VERSION
  gem.license       = 'MIT'
  gem.authors       = ['Ryan Tomayko', 'Jerry Cheung', 'Garen J. Torikian', 'shines77']
  gem.email         = ['ryan@github.com', 'jerry@github.com', 'gjtorikian@gmail.com', 'gz_shines@msn.com']
  gem.description   = 'GitHub HTML processing filters and utilities'
  gem.summary       = 'Helpers for processing content through a chain of filters'
  gem.homepage      = 'https://github.com/shines77/html-pipeline-plus/'

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f =~ %r{^(test|gemfiles|script)/} }
  gem.require_paths = ['lib']

  gem.add_dependency 'activesupport', '>= 2'
  gem.add_dependency 'nokogiri', '>= 1.4'

  gem.post_install_message = <<msg
-------------------------------------------------
Thank you for installing html-pipeline-plus!
You must bundle Filter gem dependencies.
See html-pipeline-plus README.md for more details.
https://github.com/shines77/html-pipeline-plus#dependencies
-------------------------------------------------
msg
end
