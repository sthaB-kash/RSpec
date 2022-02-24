require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { Movie.new(title: 'title', director: 'director', rate: 4) }

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid

    subject.title = 'tile'
    expect(subject).to be_valid
  end

  it 'director should be present' do
    subject.director = nil
    expect(subject).to_not be_valid
    subject.director = 'bikash'
    expect(subject).to be_valid
  end

  it 'rate should be present and valid rate' do
    subject.rate = 6
    expect(subject).to be_valid

    expect(subject.valid_rate).to be false

    subject.rate = 5
    # expect(subject.valid_rate).to be true
    expect(subject.valid_rate).to be_truthy
  end

  context 'when new user is created' do
    it 'is valid with valid attributes' do
      movie = Movie.new
      expect(movie).to_not be_valid
      # not valid as new initialized object has nil value
      # constraints are described in Movie model

      movie = Movie.new(title: 'abc')
      # expect(movie).to be_valid     #fails => director: nil and rate: nil

      movie.director = 'xyzpqr'
      # expect(movie).to be_valid     #fails again => rate: nil

      # now it is valid
      movie.rate = 4
      expect(movie).to be_valid
    end
  end
end
