require_relative 'note'
require 'socket'

class Noteboard 
  attr_reader :notes

  def initialize
    @notes = []
    server = TCPServer.new(2345)
    @client = server.accept
    loop do
      main_menu
    end
  end

  def main_menu
    @client.puts "What do you like to do?"
    @client.puts "show notes"
    @client.puts "add note"
    @client.puts "delete a note"
    input = @client.gets.chomp
    case 
    when input == "show notes"
      @client.puts @notes
    when input == "add note"
      @client.puts "Please enter a note header"
      header = @client.gets.chomp
      add_note(header)
    when input == "delete a note"
      @client.puts "Please enter a note header"
      header = @client.gets.chomp
      delete_note(header)
    when input == "quit"
      @client.close
    end
  end

  def add_note(note)
    @notes << note
    @client.puts @notes
  end

  def delete_note(header)
    @notes.delete_if{|x| x.header = header}
  end
end