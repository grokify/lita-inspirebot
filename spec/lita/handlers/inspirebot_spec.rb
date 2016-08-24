require 'spec_helper'

describe Lita::Handlers::Inspirebot, lita_handler: true do
  it { is_expected.to route('quote jobs!') }

  it 'should response like inspirational leader' do
    send_message('quote jobs!')
    expect(replies.last).to be_a(String)
  end
end