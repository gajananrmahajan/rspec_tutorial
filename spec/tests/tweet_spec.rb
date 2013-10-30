$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')

require 'spec_helper'
require 'tweet'

describe Tweet do
  it 'can set status' do
    tweet = Tweet.new({ status: 'Green' })
    tweet.status.should == 'Green'
  end

  it 'without a leading @ symbol should be public' do
    tweet = Tweet.new(status: 'Nom nom nom')
    tweet.should be_public
  end

end
