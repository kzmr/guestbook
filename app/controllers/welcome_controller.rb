class WelcomeController < ApplicationController
  def index
    note = Notes.get_note(1)
    Rails.logger.debug '############################'
    Rails.logger.debug note.id
    Rails.logger.debug note.title
    Rails.logger.debug '############################'
  end
end
