# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Newsletter.find_or_create_by(name: "RubyWeekly", url: "http://rubyweekly.com/", issues_path: "/issues",parser: "RubyweeklyParser")
Newsletter.find_or_create_by(name: "GolangWeekly", url: "http://golangweekly.com/", issues_path: "/issues", parser: "GolangweeklyParser")
Newsletter.find_or_create_by(name: "iOSDevWeekly", url: "http://iosdevweekly.com/", issues_path: "/issues", parser: "IosdevweeklyParser")