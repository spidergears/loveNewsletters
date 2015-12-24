class Issue < ActiveRecord::Base
  belongs_to :newsletter

  def as_json(options = {})
    options.merge!({ 
      only: [:id, :number, :url, :date_published],
      methods: [:newsletter]
    })
    super
  end
end
