require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                       posts_counter: 0)
    Post.new(title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0, author_id: user.id)
  end

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'tests if title more than 250chs to be invalid' do
    subject.title = 'more than 250 more than 250 more than 250 more
    than 250 more than 250 more than 250 more than 250 more than 250 more than 250 more than 250 more than 250 more
    than 250 more than 250 more than 250 more than 250 more than 250 more than 250 more than 250 '
    expect(subject).to_not be_valid
  end
end
