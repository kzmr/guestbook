# -*- encoding: utf-8 -*-
class Notes < ActiveRecord::Base
  self.table_name = 'notes'
  self.primary_key = :id

  def self.get_notes
    self.where('deleted_at = null')
  end

  def self.get_note(id)
    self.where('id=?', id).first
  end
end
