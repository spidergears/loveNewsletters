class RubyweeklyParser
  include Raspar
  
  domain 'rubyweekly.com' 
   
  def self.title
    'Ruby Weekly'
  end

  attr  :issue, 'div.issue-html .gowide.lonmo span'

  collection :news, 'div.issue-html table.gowide' do
    attr :title, 'a'
    attr :link, 'a', prop: 'href'
    attr :desc, 'div[style="font-size: 13px; line-height: 17px; margin-top: 4px"]'
  end

  collection :briefs, 'div.issue-html td ul li[style="color: #ee5533; margin-bottom: 16px; font-size: 16px; line-height: 16px"]' do
    attr :title, 'a'
    attr :tags, 'span' do
      attr :label, ""
    end
    attr :link, 'a', prop: 'href'
    attr :desc, 'span[style="font-size: 12px; color: #666666"]'
  end

  collection :jobs, 'div.issue-html td ul li[style="color: #dd0000; margin-bottom: 16px; font-size: 16px; line-height: 16px"]' do
    attr :title, 'a'
    attr :link, 'a', prop: 'hrefs'
    attr :desc, 'span[style="font-size: 12px; color: #666666"]'
  end
end