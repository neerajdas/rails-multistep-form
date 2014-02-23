
### Installing

	git clone git://github.com/inkgab/rails-multistep-form.git
	cd rails-multistep-form
	bundle install
	rake db:migrate
	rake db:test:prepare
	rails s

### Validations
* To validate an attribute, all that's needed is a conditional with the step to enforce validation:

```ruby
validates :name, presence: true, if: :step1?
validates :quantity, numericality: true, if: :step2?
```
* If you create/update an object without the multistep form (i.e. in the rails console), the step logic will be ignored and all fields will validate as expected

### Use in your own project
* This can probably be wrapped up in a gem, but you can just copy these files into your project: **app/models/concerns/multi_step_model.rb** and **app/services/model_wizard.rb**
* Then just follow the conventions used in this project

### Features
* Multistep or single step create/update
* Not much code and well abstracted
* Validate attributes per step very easily
* Some RSpec tests included
* Shouldn't break if you use the browser back/forward buttons
* Easy to integrate into your own project
* Rails 4 project, but works just as well in Rails 3

### Contact me
Have questions or needs some help?  Feel free to email me: <jay@nerdcave.com> or twitter me: [@Neeraj](http://neerajdas.com).
