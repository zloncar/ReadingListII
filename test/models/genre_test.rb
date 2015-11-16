require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  def setup
    @genre = genres(:one)
  end

  test 'test first book in the genre is finished' do
    # Book.stubs(:finished?)
    assert @genre.books.first.finished?
  end
end
