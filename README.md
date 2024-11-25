# Testing [store_attribute](https://github.com/palkan/store_attribute) database save behavior

## Setup

```bash
$ bin/bundle install
$ bin/rails db:setup
$ bin/rails db:migrate
```

### Example commands

```bash
$ bin/rails c
$ (rails console) Shop.create!
$ (rails console) ActiveRecord::Base.connection.execute('select * from shops order by created_at desc limit 1').to_a
```

#### Test - Defaults save to db, when attributes aren't passed.

#### Test - Respects user-set values, over defaults

#### Test - Fallbacks to defaults, when empty
