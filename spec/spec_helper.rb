require "rspec"
require "support/dummy_repo"
require "last_commit"

RSpec.configure do |config|
  config.before(:suite) { DummyRepo.instance.act_as_real }
  config.after(:suite)  { DummyRepo.instance.act_as_fake }
end
