require_relative '../book'

describe Book do
  context 'test the methods in the Book class' do
    book = Book.new('History of Tom Jones', 'Henry Fielding', 'good', '1749')
    it 'should return the correct title' do
      expect(book.title).to eq('History of Tom Jones')
    end

    it 'test if can_be_archived? returns true' do
      expect(book.move_to_archive).to eq(true)
    end

    it 'test if can_be_archived? returns true' do
      book.move_to_archive
      expect(book.archived).to eq(true)
    end
  end
end