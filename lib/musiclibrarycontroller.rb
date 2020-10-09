class MusicLibraryController
  attr_accessor :path

  def initialize(path = "./db/mp3s")
    new_import = MusicImporter.new(path)
    new_import.import
  end

  def call
     input = gets.strip

     if input != exit

       puts "Welcome to your music library!"
       puts "To list all of your songs, enter 'list songs'."
       puts "To list all of the artists in your library, enter 'list artists'."
       puts "To list all of the genres in your library, enter 'list genres'."
       puts "To list all of the songs by a particular artist, enter 'list artist'."
       puts "To list all of the songs by a particular genre, enter 'list genre'."
       puts "To play a song, enter 'play song'."
       puts "To quit, enter 'exit'."
       puts "What would you like to do?"

       case input
       when "list songs"
         list_songs
       when "list artists"
         list_artists
       when "list genres"
         list_genres
       when "list artist"
         list_artists
       when "list genre"
         list_genres
       when "play song"
         play_song
       end
     end
   end


   def list_songs
     Song.all.each_with_index do |a, b|
       a <=> b
     end
   end

   def list_artists
     Artist.all.each_with_index do |a, b|
       a <=> b
     end
   end

   def list_genres
     Genre.all.each_with_index do |a, b|
       a <=> b
     end
   end

   def list_artist
     input = gets.strip
     puts "Please enter an Artist."

     if artist = Artist.find_by_name(input)
       artists.songs.sort do |a, b|
         a.name <=> b.name.each_with_index do |s, i|
           puts "#{i+1}. #{s.name} - #{s.genre.name}"
         end
       end
     end



   end

   def list_genre
   end

   def play_song
   end


end
