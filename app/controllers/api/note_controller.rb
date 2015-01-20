class NoteController < ApplicationController
	def search
    notes = Notes.searchNotes
		render :json => notes
	end
end
