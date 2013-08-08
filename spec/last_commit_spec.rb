# encoding: utf-8

require "spec_helper"

describe LastCommit do
  let(:branch) { "master" }

  subject(:last_commit) { described_class.new(DummyRepo.instance.path, branch) }

  its(:author)  { should eq "Tomek Wałkuski" }
  its(:message) { should eq "Initial commit" }
  its(:sha)     { should eq "08feadfc6075dbeb696aa61e9d21383b2a6a0f0e" }

  context "when branch doesn't exist" do
    let(:branch) { "bad_branch_name" }

    it "raises error when fetching last commit message" do
      expect { last_commit.message }.to raise_error(ArgumentError)
    end

    it "raises error when fetching last commit SHA" do
      expect { last_commit.sha }.to raise_error(ArgumentError)
    end
  end
end
