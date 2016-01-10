# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#Newsletters
ruby_weekly = Newsletter.find_or_create_by(name: "RubyWeekly", url: "http://rubyweekly.com/", issues_path: "/issues",parser: "RubyweeklyParser")
golang_weekly = Newsletter.find_or_create_by(name: "GolangWeekly", url: "http://golangweekly.com/", issues_path: "/issues", parser: "GolangweeklyParser")
iosdev_weekly = Newsletter.find_or_create_by(name: "iOSDevWeekly", url: "http://iosdevweekly.com/", issues_path: "/issues", parser: "IosdevweeklyParser")

#Issues
ruby_weekly_issue = Issue.find_or_create_by(number: 277, url: "http://rubyweekly.com/issues/227", parsed_file_path: "/lovenewsletters/rubyweekly/227.parsed", newsletter: ruby_weekly, date_published: Date.today)