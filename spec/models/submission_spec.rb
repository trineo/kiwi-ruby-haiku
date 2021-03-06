# frozen_string_literal: true

RSpec.describe Submission, type: :model do
  specify 'body cannot be blank' do
    submission = Submission.new
    expect(submission).not_to be_valid
    expect(submission.errors[:body]).to include("can't be blank")
  end

  specify 'should default status to pending' do
    expect(Submission.new).to be_pending
  end
end
