# -*- encoding: utf-8 -*-
class Pages < ActiveRecord::Base

  def self.getPages(note_id)
    self.where('note_id = ?', note_id).where('deleted_at is null')
  end

  def self.get_notes
    self.where('deleted_at = null')
  end

  def self.get_note(id)
    self.where('id=?', id).first
  end

  def self.create(params)
    page = self.new
    page.note_id = params[:id]
    page.description = params[:description]
    page.save!
  end
end
