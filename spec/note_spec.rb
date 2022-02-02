require 'note'

describe 'note' do

  it 'can have a header' do
    note = Note.new("Header")
    expect(note.header).to eq("Header")
  end

  it 'can have a body' do
    note = Note.new("Header")
    note.add_body("Body")
    expect(note.body).to eq("Body")
  end
end