module Paginate
  module Controller
    private
    def set_page_and_extract_portion_from(collection)
      @page = Paginate::Page.new(current_page_param, collection)
      @page.records
    end

    def current_page_param
      params[:params].to_i > 0 ? params[:page].to_i : 1
    end
  end
end
