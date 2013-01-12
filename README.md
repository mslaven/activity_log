# ActivityLog

A very simple activity logging facility, used to record a log of events attached to a unique ID.

## Installation

Add this line to your application's Gemfile:

    gem 'activity_log'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install activity_log

## Usage

Once you have the gem installed, execute:
rails g activity_log:install

followed by

rake db:migrate

This will create the activity_log_entry model and migration as well as creating the new table in the database.

Once installed you can then add new activity log entries with by first including the actvity_log library via:

class MyController < ApplicationController
  include ActivityLog

and use the following methods to add and retrieve activity log entries:
CREATE A NEW ENTRY:
ActivityLog.log(owner_id, "user logged in")

RETRIEVE A SINGLE ENTRY
@entry = ActivityLog.get_by_id(activity_log_entry_id)

RETRIEVE ALL ENTRIES FOR A UNIQUE ID
@entries = ActivityLog.get_by_owner(owner_id)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
