require 'spec_helper'

describe 'Delayed job integration' do
  it 'sends notice to honeybadger' do
    Delayed::Job.enqueue CobraJob.new
    Honeybadger.should_receive(:notify_or_ignore).with(hash_including({
      error_class: 'RuntimeError',
      error_message: 'RuntimeError: cobras!',
      backtrace: kind_of(Array),
      context: kind_of(Hash)
    }))
    expect { Delayed::Worker.new.work_off(1) }.not_to raise_error
  end
end
