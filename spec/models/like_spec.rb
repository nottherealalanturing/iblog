require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                       posts_counter: 0)
    post = Post.create(title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0,
                       author_id: user.id)
    Like.new(author_id: user.id, post_id: post.id)
  end

  before { subject.save }

  it 'should save the data' do
    expect(subject).to be_valid
  end

  it 'name should be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'post_id should be a string' do
    subject.post_id = '11123'
    expect(subject).to_not be_valid
  end

  it 'author_id should be a string' do
    subject.author_id = '1123'
    expect(subject).to_not be_valid
  end
end