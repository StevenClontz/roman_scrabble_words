require_relative '../main'

describe 'The Roman scrabble word identifier' do
  it 'recognizes CIVIC' do
    expect('CIVIC'.is_roman?).to be_truthy
  end
  it "doesn't recognize EFFACED or FOOBAR" do
    expect('EFFACED'.is_roman?).to be_falsy
    expect('FOOBAR'.is_hexy?).to be_falsy
  end
end

describe 'The Hex scrabble word identifier' do
  it "doesn't recognize CIVIC or FOOBAR" do
    expect('CIVIC'.is_hexy?).to be_falsy
    expect('FOOBAR'.is_hexy?).to be_falsy
  end
  it "recognizes EFFACED" do
    expect('EFFACED'.is_hexy?).to be_truthy
  end
end