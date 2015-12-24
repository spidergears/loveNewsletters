class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
    @read = Newsletter.all[1].parsed_content_for_issue(89)
  end

  def show
  end
end
