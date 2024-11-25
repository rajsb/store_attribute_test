# Testing [store_attribute](https://github.com/palkan/store_attribute) database save behavior

## Gem versions

![CleanShot 2024-11-25 at 14 33 36@2x](https://github.com/user-attachments/assets/0d02133f-e26f-4899-ab67-9b60736007f4)


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

Notice how the defaults are present in the insert sql query itself.

![CleanShot 2024-11-25 at 14 34 39@2x](https://github.com/user-attachments/assets/9b4c1ab2-461d-4651-b89c-5fe4cf1a4ba4)


#### Test - Respects user-set values, over defaults

User written attributes always overwrite defaults

![CleanShot 2024-11-25 at 14 34 58@2x](https://github.com/user-attachments/assets/1a675039-e8c3-4a56-918d-23952e3e6808)


#### Test - Fallbacks to defaults, when empty

Even though values are empty in database, when query at ActiveRecord level still returns the defaults. This is the expected behavior. This is because of the configuration at [ApplicationRecord](https://github.com/rajsb/store_attribute_test/blob/b435a4b97eba79ad85dcdc6953e672931bf9581a/app/models/application_record.rb#L4)

![CleanShot 2024-11-25 at 14 35 36@2x](https://github.com/user-attachments/assets/92e5ebe0-ac17-47b7-9a9c-ebecd596e4fd)

