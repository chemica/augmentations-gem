# Augmentations gem

*Augmentations* is a tiny Ruby gem to easily extend any class with instance methods and class methods, as well as running class methods like `belongs_to` at extend time.

It's basically like `include`ing a module, but you can also define class methods and call class methods as you would in the class itself, without (ab)using the `self.included` hook and thus with less boilerplate.

Use it like

    class User < ActiveRecord::Base
      augment Shared::Pingable, User::PasswordResetExtension
    end

with modules like

    module User::PasswordResetExtension
      augmentation do

        has_many :password_resets

        def self.a_class_method
          # …
        end

        def an_instance_method
          # …
        end

      end
    end

(If you want to weird things up in the name of fewer lines of code, the Ruby parser will accept

    module User::PasswordResetExtension augmentation do

        …

    end end

too.)


## Installation

This gem is not yet registered. One it is, add this line to your application's Gemfile:

```ruby
gem 'augmentations'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install augmentations


## Credits

Originally by [Henrik Nyh](http://henrik.nyh.se/) for [DanceJam](http://dancejam.com) under the MIT license.

[Original repository](https://github.com/henrik/augmentations/)


## Contributing

1. Fork it ( https://github.com/[my-github-username]/augmentations/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
