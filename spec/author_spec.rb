require_relative '../src/author'

describe 'Unit Tests for Author Class' do
  before :each do
    @author = Author.new('Stephen', 'King')
  end

  context 'initialize object' do
    it 'should be an instance of Author' do
      expect(@author).to be_instance_of Author
    end

    it 'should not be an instance of Item' do
      expect(@author).not_to be_instance_of Item
    end
  end

  context 'First name of author' do
    it 'should be "Stephen"' do
      expect(@author.first_name).to eql 'Stephen'
    end
  end

  context 'Last name of author' do
    it 'should be "King"' do
      expect(@author.last_name).to eql 'King'
    end
  end
end
