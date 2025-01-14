require 'spec_helper'

describe 'test that plain rails still works' do
  it 'joins and merge' do
    relation = Author.joins(:posts).merge(Post.joins(:comments).merge(Comment.where(body: 'body')))

    expect(relation).to match_sql_snapshot
  end

  it 'left_joins' do
    relation = Post.left_joins(:parent, :author)

    expect(relation).to match_sql_snapshot
  end
end
