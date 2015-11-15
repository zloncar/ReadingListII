require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test 'invalid without a title' do
    b = Book.new
    assert !b.valid?, 'Title is not being validated'
  end

  test 'check author' do
    b = books(:one)
    assert b.author == 'Magnus and Bunker'
  end

  test 'invalid title gives error message' do
    b = books(:two)
    b.title = nil
    b.valid?
    assert_match /can't be blank/, b.errors[:title].join,
      'Presence error not found on book'
  end

  test 'valid with all attributes' do
    book = Book.new(title: 'Kad srce radi bi-bim-ba-bam')
    book.genres << Genre.new
    assert book.valid?
  end

  test 'find finished books' do
    books = [ books(:one), books(:two) ]
    assert books.find_all { |b| b.finished? }.size == 1
  end
end
