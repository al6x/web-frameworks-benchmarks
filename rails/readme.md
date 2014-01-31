Sample for benchmark of [Ruby on Rails](http://rubyonrails.org), Ruby Web Framework

How to run:

- Install ruby (I used v. 2.1.0).
- Install Ruby on Rails (I used v. 4.0.2).
- Install dependencies `bundle install`.
- Install node.js, it's needed for remote lorem-ipsum service.
- Run lorem-ipsum service `node lorem-ipsum.js`.
- Run sample in production `RAILS_ENV=production benchmarkundle exec puma -b tcp://127.0.0.1:3000 -t 100:100 config.ru`.
- Use http://localhost:3000 to run a benchmark.
