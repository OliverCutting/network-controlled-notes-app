require 'noteboard'

describe Noteboard do

  let(:note){ double :note }
  it 'is empty by default' do
    expect(subject.notes).to be_empty
  end

  it 'can add a note' do
    subject.add_note(note)
    expect(subject.notes).to include(note)
  end

  it 'can delete a note' do
    subject.add_note(note)
    subject.delete_note(note)
    expect(subject.notes).not_to include(note)
  end
end