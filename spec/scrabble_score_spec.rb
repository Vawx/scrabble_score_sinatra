require('rspec')
require('scrabble_score')

describe('String#include_number') do
  it('returns false if letter') do
    expect('d'.include_number()).to(eq(false))
  end
  it('returns true if number') do
    expect('3'.include_number()).to(eq(true))
  end
  it('returns true if number within word') do
    expect('appl3'.include_number()).to(eq(true))
  end
end

describe("String#scrabble_score") do
  it('returns a scrabble score for a letter') do
    expect("i".scrabble_score()).to(eq(1))
  end
  it('returns a scrabble score for a more valuable letter') do
    expect('d'.scrabble_score()).to(eq(2))
  end
  it('returns a scrabble score for an even more valued letter') do
    expect('b'.scrabble_score()).to(eq(3))
  end
  it('returns a scrabble score for an even more valued letter') do
    expect("F".scrabble_score()).to(eq(4))
  end
  it('returns a scrabble score for an even more valued letter') do
    expect("k".scrabble_score()).to(eq(5))
  end
  it('returns a scrabble score for an even more valued letter') do
    expect("J".scrabble_score()).to(eq(8))
  end
  it('returns a scrabble score for an even more valued letter') do
    expect("q".scrabble_score()).to(eq(10))
  end
  it('returns NIL if input is not a letter ') do
    expect("1".scrabble_score()).to(eq("Input is not valid"))
  end
  it('returns score for word') do
    expect("apple".scrabble_score()).to(eq(9))
  end
  it('returns score for word') do
    expect("app3le".scrabble_score()).to(eq("Input is not valid"))
  end
  it('returns score for word') do
    expect("oran!ge".scrabble_score()).to(eq("Input is not valid"))
  end
end
