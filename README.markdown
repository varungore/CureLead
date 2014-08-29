It has 'users', 'posts', and 'images'.  Users have_many 'posts', and posts have_many 'images'

Things to note:

- [sorcery](https://github.com/NoamB/sorcery) is used for [simple password authentication](https://github.com/NoamB/sorcery/wiki/Simple-Password-Authentication).
- [acts_as_votable](https://github.com/ryanto/acts_as_votable) keeps score of votes, and provides the capability to vote.
- [filepicker]() is the image uploader and processor, it allows flexible image selection on mobile and desktop, as well as integration with [amazons3](https://aws.amazon.com/s3/)
- [bootstrap 2.3.2](http://getbootstrap.com/2.3.2/) is the front-end framework, utilizing [bootstrapCDN](http://www.bootstrapcdn.com/)
- Specs are written with [rspec](https://github.com/rspec/rspec), utilizing [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
- Rails version 4.0.0(without turbolinks)

## to get started… 
### make sure you have RVM and ruby2

1. <code>bundle install</code>
  - make sure all gems are installed 
2. <code>rake db:migrate db:test:prepare</code>

- sqlite locally 
- System dependencies:
  - requires [inkfilepicker.com](https://www.inkfilepicker.com) account 


# Contributing

We love pull requests. Here's a quick guide:

1. Fork the repo.

2. Run the tests. We only take pull requests with passing tests, and it's great
to know that you have a clean slate: `bundle && rake`

3. Add a test for your change. Only refactoring and documentation changes
require no new tests. If you are adding functionality or fixing a bug, we need
a test!

4. Make the test pass.

5. Push to your fork and submit a pull request.


At this point you're waiting on us. We like to at least comment on, if not
accept, pull requests within three business days (and, typically, one business
day). We may suggest some changes or improvements or alternatives.

Some things that will increase the chance that your pull request is accepted,
taken straight from the Ruby on Rails guide:

* Use Rails idioms and helpers
* Include tests that fail without your code, and pass with it
* Update the documentation, the surrounding one, examples elsewhere, guides,
  whatever is affected by your contribution

Syntax:

* Two spaces, no tabs.
* No trailing whitespace. Blank lines should not have any space.
* Prefer &&/|| over and/or.
* MyClass.my_method(my_arg) not my_method( my_arg ) or my_method my_arg.
* a = b and not a=b.
* Follow the conventions you see used in the source already.

And in case we didn't emphasize it enough: we love tests!
