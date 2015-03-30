# -*- encoding: utf-8 -*-
class Notes < ActiveRecord::Base
  #self.table_name = "notes"
  #self.primary_key = :id

  def self.searchNotes
    self.where('deleted_at is null')
  end

  def self.get_notes
    self.where('deleted_at = null')
  end

  def self.get_note(id)
    self.where('id=?', id).first
  end

  def self.create(params)
    note = self.new
    note.title = params[:title]
    note.latitude = params[:lat]
    note.longitude = params[:lng]
    note.save!
  end
end
