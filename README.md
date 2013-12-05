This is a sample Rails 4 app to accompany the blog post ["View templates in Rails with Backbone.js: Don't cross the streams!"](http://cmme.org/tdumitrescu/blog/2013/12/rails-backbone-templates/). It demonstrates a progression from Rails views with imperative jQuery-powered client code to a Backbone solution with declarative client-side templating.

Three different stages of the dynamic picture-swapping client-side app are available in branches:

- `jquery`: basic jQuery implementation of picture-cycling
- `backbone-1`: blunt Backbone version of jQuery pic-swapping
- `backbone-2`: Backbone with client-side templating

## Usage

Install:
```sh
git clone git@github.com:tdumitrescu/rails-backbone-view-example.git
cd rails-backbone-view-example/
bundle install
```

Run server:
```sh
bundle exec rails s
```

Cycle through cute capybaras: [http://localhost:3000/](http://localhost:3000/)

Switch branches to load the different front end versions. `master` has the final Backbone implementation.
