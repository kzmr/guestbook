module Api
  class PageController < ApplicationController
    def get
      ret = {}
      result = []
      pages = Pages.getPages(params[:id])
      if pages.present?
        pages.each do |item|
          w = {}
          w['description'] = item.description
          result << w
        end
      end

      ret['response'] = result

      render :json => ret
    end

    def create
      Pages.create(params)

      ret = {}
      ret['response'] = 'success'
      render :json => ret
    end

  end
end
