require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do
  it ('take a word and count how many times it is in the string') do
    expect("wolf".word_count("wolf")).to(eq(1))
  end
  it ('take a multiple word sentence and count a specific word once') do
    expect("The wolf ate the rabbit".word_count("wolf")).to(eq(1))
  end
  it ('count how many times a specific word is used in a sentence') do
    expect("The wolf ate the rabbit, and the wolf ran into the forest".word_count("wolf")).to(eq(2))
  end
  it ('count how many times a specific word is used in a sentence regardless of case') do
    expect("The WOLF ate the rabbit, and the wolf ran into the forest".word_count("wolf")).to(eq(2))
  end
end
