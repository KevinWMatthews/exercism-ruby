#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'

require_relative 'food_chain'

class NoCheating < IOError
  def message
    "The use of File.open and IO.read is restriced.\n"                \
    'This exercise intends to help you improve your ability to work ' \
    'with data generated from your code. Your program must not read ' \
    'the song.txt file.'
  end
end

class FoodChainTest < Minitest::Test
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  # There's no need to submit the tests you write, unless you
  # specifically want feedback on them.

  def test_the_whole_song
    song_file = File.expand_path('../song.txt', __FILE__)
    expected  = IO.read(song_file)
    assert_equal expected, FoodChain.song
  end

  def test_first_verse_fly
    expected = [
      "I know an old lady who swallowed a fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Fly.new.message)
  end

  def test_second_verse_spider
    expected = [
      "I know an old lady who swallowed a spider.",
      "It wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Spider.new.message)
  end

  def test_third_verse_bird
    expected = [
      "I know an old lady who swallowed a bird.",
      "How absurd to swallow a bird!",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Bird.new.message)
  end

  def test_fourth_verse_cat
    expected = [
      "I know an old lady who swallowed a cat.",
      "Imagine that, to swallow a cat!",
      "She swallowed the cat to catch the bird.",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Cat.new.message)
  end

  def test_fifth_verse_dog
    expected = [
      "I know an old lady who swallowed a dog.",
      "What a hog, to swallow a dog!",
      "She swallowed the dog to catch the cat.",
      "She swallowed the cat to catch the bird.",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Dog.new.message)
  end

  def test_sixth_verse_goat
    expected = [
      "I know an old lady who swallowed a goat.",
      "Just opened her throat and swallowed a goat!",
      "She swallowed the goat to catch the dog.",
      "She swallowed the dog to catch the cat.",
      "She swallowed the cat to catch the bird.",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Goat.new.message)
  end

  def test_seventh_verse_cow
    expected = [
      "I know an old lady who swallowed a cow.",
      "I don't know how she swallowed a cow!",
      "She swallowed the cow to catch the goat.",
      "She swallowed the goat to catch the dog.",
      "She swallowed the dog to catch the cat.",
      "She swallowed the cat to catch the bird.",
      "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
      "She swallowed the spider to catch the fly.",
      "I don't know why she swallowed the fly. Perhaps she'll die.",
      ""
    ]
    assert_equal(expected, Cow.new.message)
  end

  def test_eighth_verse_horse
    expected = [
      "I know an old lady who swallowed a horse.",
      "She's dead, of course!",
      ""
    ]
    assert_equal(expected, Horse.new.message)
  end

  # Tests that an error is effectively raised when IO.read or
  # File.open are used within FoodChain.
  def test_read_guard
    ["IO.read 'song.txt'", "File.open 'song.txt'"].each do |trigger|
      assert_raises(NoCheating) { FoodChain.send :class_eval, trigger }
    end
  end

  # This is some simple book-keeping to let people who are
  # giving feedback know which version of the exercise you solved.
  # def test_version
  #   skip
  #   assert_equal 2, FoodChain::VERSION
  # end
end

module RestrictedClasses
  class File
    def self.open(*)
      fail NoCheating
    end

    def self.read(*)
      fail NoCheating
    end
  end

  class IO
    def self.read(*)
      fail NoCheating
    end
  end
end

FoodChain.prepend RestrictedClasses
