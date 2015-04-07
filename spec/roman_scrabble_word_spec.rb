class String
  def is_roman?
    false
  end
end

describe 'The Roman scrabble word identifier' do
  it 'recognizes CIVIC' do
    expect('CIVIC'.is_roman?).to be_falsy
  end
end