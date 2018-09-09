module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Mohamed Ali Elzeiny Portfolio Website"
    @seo_keywords = "Mohamed Ali Elzeiny portfolio"
  end
end