module Api
  class NoteController < ApplicationController
    def search
      ret = {}
      result = []
      notes = Notes.searchNotes
      if notes.present?
        notes.each do |item|
          w = {}
          w['id'] = item.id
          w['title'] = item.title
          w['latitude'] = item.latitude
          w['longitude'] = item.longitude
          result << w
        end
      end

      ret['response'] = result

      render :json => ret
    end

    def create
      Notes.create(params)

      ret = {}
      ret['response'] = 'success'
      render :json => ret
    end
  end
end
