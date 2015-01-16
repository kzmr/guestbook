class WelcomeController < ApplicationController
  def index
    @note = Notes.get_note(1)
  end
end
