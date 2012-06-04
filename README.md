This small hack implements has_many friendly Globalize3 helper for ActiveAdmin.

Admittedly it generates structure that [jQueryUI tabs()](http://jqueryui.com/demos/tabs/) expect. However the whole idea is pretty simple and you should be able to change it to suit your needs.

## Installation

Add this line to your application's Gemfile:

    gem 'ActiveAdmin-Globalize3-inputs'

And then execute:

    $ bundle

## Usage by example

```ruby
ActiveAdmin.register Gallery do
  form do |f|
    f.globalize_inputs :translations do |lf|
      lf.inputs do
        lf.input :title
        lf.input :description

        lf.input :locale, :as => :hidden
      end
    end

    f.has_many :photos do |photo|
      photo.inputs do
        photo.input :image, :as => :file
      end

      photo.globalize_inputs :translations do |lp|
        lp.inputs do
          lp.input :description

          lp.input :locale, :as => :hidden
        end
      end
    end

    f.buttons
  end
end
```

As you can see, there's no special option for locales. The list is taken from `I18n.available_locales`, so you'd probably want to define the locales your application works with somewhere.

## Contributing

1. Fork
2. Invent better name
3. Improve
4. Enjoy
