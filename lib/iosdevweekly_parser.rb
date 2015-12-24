class IosdevweeklyParser
  include Raspar
  
  domain 'iosdevweekly.com'
  
  def self.title
    'iOS Dev Weekly'
  end

  attr :issue, '#start h1 a'
  
  collection :news, '#news .item.item--issue.item--link' do
    attr :title, 'h3'
    attr :link, 'h3 a', prop: 'href'
    attr :desc, "p"
  end

  collection :tools, '#tools .item.item--issue.item--link' do
    attr :title, 'h3'
    attr :link, 'h3 a', prop: 'href'
    attr :desc, "p"
  end

  collection :code, '#code .item.item--issue.item--link' do
    attr :title, 'h3'
    attr :link, 'h3 a', prop: 'href'
    attr :desc, "p"
  end

  collection :jobs, '#jobs .item.item--issue.item--link' do
    attr :title, 'h3'
    attr :link, 'h3 a', prop: 'href'
    attr :desc, "p"
  end
end