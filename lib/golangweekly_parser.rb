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
    attr :tags, "td.link" do 
      attr :label, "span.tag", as: :array
    end
    attr :desc, 'td.body'
  end

  collection :briefs, 'table.item.section-brief' do
    attr :title, 'td.link a'
    collection :tags, 'td.link' do
      attr  :label, "span.tag", as: :array
    end
    attr :link, 'td.link a', prop: 'href'
    attr :desc, 'td.body'
  end

  collection :jobs, 'table.item.section-jobs' do
    attr :title, 'td.link a'
    attr :link, 'td.link a', prop: 'hrefs'
    attr :desc, 'td.body'
  end
end