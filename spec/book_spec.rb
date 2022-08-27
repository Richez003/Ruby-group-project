require_relative '../src/book'

describe Book do
  context 'Book class tests' do
    before(:each) do
      @book = Book.new('Harry Potter', 'Penguin', 'good', '2022')
    end

    it 'should return correct book publisher' do
      expect(@book.title).to eq('Harry Potter')
    end

    it 'should return correct book publisher' do
      expect(@book.cover_state).to eq('good')
    end

    it 'should be a Book class instance' do
      expect(@book).to be_an_instance_of Book
    end

    it 'should return correct book publisher' do
      expect(@book.publisher).to eq('Penguin')
    end
  end
end
