module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Cath Riddoch Portfolio | Made using Ruby on Rails"
    @seo_keywords = "Cath Riddoch Web Developer"
  end
end
