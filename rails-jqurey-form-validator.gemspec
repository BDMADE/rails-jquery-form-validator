# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/jquery/form/validator/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-jquery-form-validator'
  spec.version       = Rails::jquery::Form::Validator::VERSION
  spec.authors       = ['hmtanbir']
  spec.email         = ['tanbir2025@gmail.com']

  spec.summary       = %q{Integrate the jQuery Form Validator plugin into the Rails asset pipeline}
  spec.description   = %q{jQuery Form Validator is a feature rich jQuery plugin that makes it easy to validate user input while keeping your HTML markup clean from javascript code. Even though this plugin has a wide range of validation functions it's designed to require as little  jQuery bandwidth as possible. This is achieved by grouping together validation functions in 'modules', making it possible for the programmer to load only
those functions that's needed to validate a particular form.}
  spec.homepage      = 'https://github.com/bdmade/rails-jquery-form-validator'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split('\x0').reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
end
