# Rails::Jquery::Form::Validator

Jquery-form-validator-rails gem is based on Victor Jonsson's jQuery plugin: https://github.com/victorjonsson/jQuery-Form-Validator

jQuery Form Validator is a feature rich and multilingual jQuery plugin that makes it easy to validate user input while keeping your HTML markup clean from javascript code. Even though this plugin has a wide range of validation functions it's designed to require as little network traffic as possible. This is achieved by grouping together validation functions in "modules", making it possible to load only those functions that's needed to validate a particular form.

Form demos and full documentation available at http://formvalidator.net/
## Installation

Add this line to your application's Gemfile:

    gem 'jquery-form-validator-rails'

And then execute:

    $ bundle

### Include jquery.form-validator-rails javascript assets

Add the following to your `app/assets/javascripts/application.js`:

    //= require jquery.form-validator


### Easy example

Example how to add Jquery Form Validator to FormHelper `text_field`:

    <div class="controls">
      <%= f.text_field(:example, class: "field", data: {
          :validation => "required validate_max_length length50",
          "validation-error-msg" => "This field is required and cannot be longer than 50 characters."
        }) %>
    </div>

Then add following to your `app/assets/javascripts/application.js`

    <script>
      $(document).ready(function() {
        $.validate();
      });
    </script>

Other configuration options can be seen here: http://formvalidator.net/#configuration

### Added modules:

* security
* date
* location
* file
* sweden
* uk

The following code shows you how to load the module.

    <script>
      $.validate({
        modules : 'security'
      });
    </script>

Read the documentation for the modules at http://formvalidator.net

## Contributing makes this repo happy!

Please just hop in and help out! :smile:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request