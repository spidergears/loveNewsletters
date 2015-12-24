class GolangweeklyParser
  include Raspar
  
  domain 'golangweekly.com' 
   
  def self.title
    'Golang Weekly'
  end

  attr  :issue, '.issuemetadata'

  collection :news, 'table.item.section-featured' do
    attr :title, 'td.link a'
    attr :link, 'td.link a', prop: 'href'
    attr :tags, "td.link span.tag", as: :array, eval: :normalize_tags
    attr :desc, 'td.body'
    attr :author, 'td.source'
  end

  collection :briefs, 'table.item.section-brief' do
    attr :title, 'td.link a'
    attr :tags, "td.link span.tag", as: :array, eval: :normalize_tags
    attr :link, 'td.link a', prop: 'href'
    attr :desc, 'td.body'
    attr :author, 'td.source'
  end

  collection :jobs, 'table.item.section-jobs' do
    attr :title, 'td.link a'
    attr :link, 'td.link a', prop: 'hrefs'
    attr :desc, 'td.body'
    attr :author, 'td.source'
  end

  def normalize_tags(tag, ele)
    tag[0] = ""
    tag[-1] = ""
    tag.strip
  end
end