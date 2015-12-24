class Newsletter < ActiveRecord::Base
  RubyweeklyParser
  GolangweeklyParser
  def parsed_content_for_issue(issue)
    Raspar.parse(url, content_for_issue(issue))
  end

  def content_for_issue(issue)
    File.read "go.txt" #Net::HTTP.get(url_for_issue(issue))
  end

  def url_for_issue(issue)
    p URI("#{url}#{issues_path}/#{issue}")
  end
end

