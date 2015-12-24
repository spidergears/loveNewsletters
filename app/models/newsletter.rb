class Newsletter < ActiveRecord::Base
  has_many :issues

  def parsed_content_for_issue(issue)
    Raspar.parse(url, content_for_issue(issue))
  end

  def content_for_issue(issue)
    File.read "go.txt" #Net::HTTP.get(url_for_issue(issue))
  end

  def url_for_issue(issue)
    p URI("#{url}#{issues_path}/#{issue}")
  end

  def as_json(options = {})
    options.merge!({ 
      only: [:id, :name, :url, :issues_path],
      methods: [:issues]
    })
    super
  end
end

